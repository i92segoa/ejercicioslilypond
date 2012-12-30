mkdir -p out
if [ -f out/lpe.tex ] ; then rm out/lpe.tex; fi

/bin/cp lily-logo.png out/	
lilypond-book --pdf --output=out --format=latex lpe.tex &>log
cd out
pdflatex lpe.tex
cd ..
/bin/cp out/lpe.pdf lpe.pdf
