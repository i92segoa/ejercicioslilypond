IN=fragmentos
OUT=out

sheets = mozart-sonates.pdf

scores = $(wildcard $(IN)/*.ly)
outfiles = $(scores:$(IN)/%.ly=$(OUT)/%.pdf)

all: $(OUT) $(outfiles) $(sheets)

clean:
	rm -rf $(outfiles) $(outfiles:%.pdf=%.eps) $(outfiles:%.pdf=%.preview.pdf) $(outfiles:%.pdf=%.preview.eps) $(outfiles:%.pdf=%.preview.png)
	rmdir --ignore-fail-on-non-empty $(OUT)


$(OUT):
	mkdir -p $@


$(outfiles): $(OUT)/%.pdf: $(IN)/%.ly
	LILYPOND_LOGLEVEL=BASIC lilypond -drelative-includes -dbackend=eps -dpreview -dno-aux-files --pdf -o $(basename $@) $<

$(sheets): %.pdf: %.tex $(outfiles)
	pdflatex $<
