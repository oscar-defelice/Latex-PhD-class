$silent = 1;
$fdb_ext = 'fdb';

@default_files = ('main.tex');

$pdf_mode = 1;
$pdflatex = 'pdflatex %O -halt-on-error -shell-escape %S; cp %B.pdf locked.%B.pdf';

$pdf_previewer = 'start evince %O locked.%S'; # This works if evince is installed as pdf viewer.
# $pdf_previewer = 'start open %O locked.%S'; # Uncomment for OSX use.

$clean_ext .= 'bbl nav out auxlock';
