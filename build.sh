#!/bin/bash

main() {
    if [ "$1" == "clean" ]; then
        echo clean
        clean
    else
        if [ $# -eq 0 ]; then # no args
            document_types=(resume cover_letter references)
        else
            document_types=($1 $2 $3)
        fi
        echo $document_types
        compile_selected_documents $document_types
    fi
}

compile_selected_documents() {
    document_types=$1
    # compile all LaTeX variants for each document type files
    for varient in ./varients/*.adr; do
        # remove .adr extension
        jobname=$(basename $varient .adr)
        echo jobname # log jobname

        for document_type in "${document_types[@]}"; do
            echo $document_type # log document_type

            # create output directories if not already created
            mkdir -p output/$jobname/$document_type

            # set output directory for document build
            outdir=output/$jobname/$document_type
            # compiles variant of document
            compile_document $document_type $jobname $outdir
            # renames output pdf for upload
            rename_document $document_type $jobname $outdir
            # converts pdf to plain text
            document_to_txt $document_type $jobname $outdir
        done
    done
}

compile_document() {
    document_type="$1"
    jobname="$2"
    outdir="$3"

    echo pdflatex -interaction=nonstopmode --output-dir $outdir -jobname=$jobname "$document_type".tex
    pdflatex -interaction=nonstopmode --output-dir $outdir -jobname=$jobname "$document_type".tex
}

rename_document() {
    document_type="$1"
    jobname="$2"
    outdir="$3"

    echo mv ${outdir}/{${jobname}.pdf,$document_type.pdf}
    mv ${outdir}/{${jobname}.pdf,$document_type.pdf}
}

document_to_txt() {
    document_type="$1"
    jobname="$2"
    outdir="$3"

    echo pdftotext -layout $outdir/$jobname/$document_type.pdf
    pdftotext -layout $outdir/$jobname/$document_type.pdf

}

clean() {
    rm -rf output/*
}

main "$@"
