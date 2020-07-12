#!/bin/bash

main() {
	if [ "$1" == "clean" ]; then
		echo clean
		clean
	else
		compile_documents
	fi
}

compile_documents() {
	WORKDIR=$(pwd)
	TMPDIR=`mktemp -d`
	echo "$TMPDIR"
	cp -r roles companies classes templates "$TMPDIR"
	cd "$TMPDIR"
	# compile all LaTeX variants for each document type files
	for role_file in ./roles/*.tex; do
		role=$(basename "$role_file" .tex)

		for company_file in ./companies/*.tex; do
			company=$(basename "$company_file" .tex)

			for template_file in ./templates/*.tex; do
				template=$(basename "$template_file" .tex)

				echo "$role - $company - $template" # log document
				# set output directory for document build
				outdir=./output/$role/$company/$template
				# create output directories if not already created
				mkdir -p "$outdir"
				# compiles document
				cat "$template_file" |
					inject_file "$role_file" ROLE_INJECTION |
					inject_file "$company_file" COMPANY_INJECTION > "$outdir/$template.tex"
				pdflatex -interaction=nonstopmode --output-dir "$outdir" "$outdir/$template.tex"
				# converts pdf to plain text
				pdftotext -layout -enc ASCII7 "$outdir/$template.pdf"
                                rm -rf "$outdir"/{*.log,*.out,*.aux}
			done
		done
	done

	# remove temp directory
	cp -r "$TMPDIR/output" "$WORKDIR"
	rm -rf "$TMPDIR"
}

inject_file() {
	injection_file="$1"
	delim="$2"
	sed /^.*$delim/r\ $injection_file
}

clean() {
	rm -rf output
}

main "$@"
