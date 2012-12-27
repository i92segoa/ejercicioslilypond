mkdir -p out
if [ -f out/libro.tex ] ; then rm out/libro.tex; fi

/bin/cp lily-logo.png out/	
lilypond-book --pdf --output=out --format=latex libro.tex &>log
cd out
pdflatex libro.tex
cd ..
cp out/libro.pdf libro.pdf
