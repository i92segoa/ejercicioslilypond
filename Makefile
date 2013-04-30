# de Slave Songs A. Simpson 1867, Marcus Brinkmann 2007

NOMBRE=libro
OUT=out
#LYNOMBRES=faenas incarnatus 			#fuentes lilypond
#LYARCHIVOS=$(addsuffix .ly, $(LYNOMBRES))
#LYPDF=$(addsuffix .pdf, $(LYNOMBRES))
RUNEVINCE=evince $(OUT)/$(NOMBRE).pdf &
#para salvia
#RUNBIB=cd $(OUT) && bibtex8 -W --csfile /home/fravd/software/biblatex/biblatex/doc/resources/latin1.csf $(NOMBRE)
#para Oregano
#RUNBIB=cd $(OUT) && bibtex8 -W --csfile /home/fravd/trabajos-doctorado/biblatex/biblatex/doc/resources/latin1.csf  $(NOMBRE)
SPLITPDFS=outA1.pdf outA2.pdf outB1.pdf outB2.pdf
IMAGENES=lily-logo.png $(SPLITPDFS) frerejacques.pdf holst-marte.pdf	\
bach-cbt1.pdf mozart-sonates.pdf chopin-op10.pdf			\
chopin-op25-posth.pdf lpe.pdf
#/home/fravd/software/latex/biblatex/doc/resources/latin1.csf $(NOMBRE)
INCLUDESTEX=introduccion.tex apuntes-01-instalacion.tex			\
	apuntes-02-cumple.tex apuntes-03-mozart.tex			\
	apuntes-03-mozart.tex						\
	apuntes-04-alteraciones-titulos-ofrenda.tex			\
	apuntes-05-barras-beethoven5th.tex				\
	apuntes-06-ligaduras-bach-suite1-cello.tex			\
	apuntes-07-repeticiones-beethoven-9thsym.tex			\
	apuntes-08-contextos-simultanea.tex apuntes-09-polifonia.tex	\
	apuntes-10-piano-tresillos.tex apuntes-11-canciones.tex		\
	apuntes-12-acordes.tex apuntes-13-variables.tex			\
	apuntes-14-articulaciones-digitaciones.tex			\
	apuntes-15-reguladores-markup.tex apuntes-16-adornos.tex	\
	apuntes-17-set.tex apuntes-18-emperador.tex			\
	apuntes-19-bajocifrado.tex apuntes-20-machaut.tex		\
	apuntes-21-midi.tex apuntes-22-trucha.tex			\
	apuntes-23-despertad.tex apuntes-24-book.tex			\
	apuntes-25-mendelssohn.tex apuntes-26-margenes.tex		\
	apuntes-27-holst-1.tex apuntes-28-holst-2.tex			\
	apuntes-29-espanol.tex apuntes-30-antigua.tex			\
	apuntes-00-teclado.tex collections.tex				\
	lilypond-por-ejemplo.tex

RUNPDF=cd $(OUT) && echo && pwd && echo && xelatex $(NOMBRE).tex
LPBOOK=lilypond-book --pdf --output=$(OUT) --include=$(OUT) --format=latex
ARCHIVOSCOPIAR=$(IMAGENES)
COPIAR=cp $(ARCHIVOSCOPIAR) $(OUT)

all: build show

build: $(NOMBRE).pdf

show: 
	$(RUNEVINCE)

$(NOMBRE).pdf: $(NOMBRE).tex $(INCLUDESTEX) $(IMAGENES)
	mkdir -p $(OUT)
	if [ -f $(OUT)/$(NOMBRE).tex ] ; then rm $(OUT)/$(NOMBRE).tex; fi
	# rm $(OUT)/$(NOMBRE).tex
	for tex in $(INCLUDESTEX); do (if [ -f $(OUT)/$$tex ] ; then rm $(OUT)/$$tex ; fi); done
	for tex in $(INCLUDESTEX); do (echo $$tex; echo; $(LPBOOK) $$tex); done
	$(LPBOOK) $(NOMBRE).tex
	$(COPIAR)

	$(RUNPDF)
	$(RUNPDF)
	$(RUNPDF)

	cp $(OUT)/$(NOMBRE).pdf ./

$(SPLITPDFS): pruebalibro.ly
	lilypond pruebalibro.ly
	. ./scriptPDFTK.sh

frerejacques.pdf: frerejacques.ly
	lilypond frerejacques.ly

holst-marte.pdf: holst-marte.ly
	lilypond holst-marte.ly

muestra:
	@echo 'NOMBRE: $(NOMBRE)'
	@echo 'LY: $(LYNOMBRES)'
	@echo 'LYARCHIVOS: $(LYARCHIVOS)'
	@echo 'LYPDF: $(LYPDF)'
	@echo 'OUT: $(OUT)'
	@echo 'RUNEVINCE: $(RUNEVINCE)'
	@echo 'RUNBIB: $(RUNBIB)'
	@echo 'RUNPDF: $(RUNPDF)'
	@echo 'RUNPDF: $(RUNPDF)'
	@echo 'BIBARCHIVOS: $(BIBARCHIVOS)'
	@echo 'FUENTESPYX: $(FUENTESPYX)'
	@echo 'DATOSPYX: $(DATOSPYX)'
	@echo 'GRAFICASPYX: $(GRAFICASPYX)'
	@echo 'GRAFOS: $(GRAFOS)'
	@echo 'IMAGENES: $(IMAGENES)'
	@echo 'INCLUDESTEX: $(INCLUDESTEX)'
	@echo 'INCLUDESVERB: $(INCLUDESVERB)'
	@echo 'ARCHIVOSCOPIAR: $(ARCHIVOSCOPIAR)'
	@echo 'COPIAR: $(COPIAR)'

clean:
	rm -fr *.bbl *.blg *.aux *.idx *.dep *.log *.toc *.ps *.midi *.dvi *~ out snippet-map.ly
	rm -rf $(OUT)

force:
	rm -rf $(OUT)
	touch $(NOMBRE).tex
	make

.PHONY: wordcount

wordcount: dea.tex
	detex dea.tex | wc
