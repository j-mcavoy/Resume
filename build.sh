#!/bin/bash

main() {

    document_types=(resume cover_letter references)

    # compile all LaTeX variants for each document type files
    for varient in ./varients/*.adr; do
        # remove .adr extension
        jobname=$(basename $varient .adr)
        echo jobname # log jobname

        for document_type in $document_types; do
            echo $document_type # log document_type

            # create output directories if not already created
            mkdir -p output/$jobname/$document_type

            # set output directory for document build
            outdir=output/$jobname/$document_type
            # compiles variant of document
            compile_document $document_type $jobname $outdir
            # renames output pdf for upload
            rename_document $document_type $jobname $outdir
        done
    done
}

compile_document() {
    document_type="$1"
    jobname="$2"
    outdir="$3"

    echo pdflatex --output-dir $outdir -jobname=$jobname resume.tex
    pdflatex --output-dir $outdir -jobname=$jobname resume.tex
}

rename_document() {
    document_type="$1"
    jobname="$2"
    outdir="$3"

    echo mv ${outdir}/{${jobname}.pdf,$document_type.pdf}
    mv ${outdir}/{${jobname}.pdf,$document_type.pdf}
}

main
