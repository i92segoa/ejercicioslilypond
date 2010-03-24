# de Slave Songs A. Simpson 1867, Marcus Brinkmann 2007

NOMBRE=libro
OUT=/tmp/salida
#LYNOMBRES=faenas incarnatus 			#fuentes lilypond
#LYARCHIVOS=$(addsuffix .ly, $(LYNOMBRES))
#LYPDF=$(addsuffix .pdf, $(LYNOMBRES))
RUNEVINCE=evince $(OUT)/$(NOMBRE).pdf &
#para salvia
#RUNBIB=cd $(OUT) && bibtex8 -W --csfile /home/fravd/software/biblatex/biblatex/doc/resources/latin1.csf $(NOMBRE)
#para Oregano
#RUNBIB=cd $(OUT) && bibtex8 -W --csfile /home/fravd/trabajos-doctorado/biblatex/biblatex/doc/resources/latin1.csf  $(NOMBRE)
IMAGENES=lily-logo.png
#/home/fravd/software/latex/biblatex/doc/resources/latin1.csf $(NOMBRE)
INCLUDESTEX=introduccion.tex apuntes-01-instalacion-include.tex		\
	apuntes-02-cumple-include.tex					\
	apuntes-03-mozart-include.tex					\
	apuntes-03-mozart-include.tex					\
	apuntes-04-alteraciones-titulos-ofrenda-include.tex		\
	apuntes-05-barras-beethoven5th-include.tex			\
	apuntes-06-ligaduras-bach-suite1-cello-include.tex		\
	apuntes-07-repeticiones-beethoven-9thsym-include.tex		\
	apuntes-08-contextos-simultanea-include.tex			\
	apuntes-09-polifonia-include.tex				\
	apuntes-10-piano-tresillos-include.tex				\
	apuntes-11-canciones-include.tex				\
	apuntes-12-acordes-include.tex					\
	apuntes-13-variables-include.tex				\
	apuntes-14-articulaciones-digitaciones-include.tex		\
	apuntes-15-reguladores-markup-include.tex			\
	apuntes-16-adornos-include.tex apuntes-17-set-include.tex	\
	apuntes-18-emperador-include.tex				\
	apuntes-19-bajocifrado-include.tex				\
	apuntes-20-machaut-include.tex apuntes-21-midi-include.tex	\
	apuntes-22-trucha-include.tex					\
	apuntes-23-despertad-include.tex

RUNPDF=cd $(OUT) && echo && pwd && echo && pdflatex $(NOMBRE).tex
LPBOOK=lilypond-book --pdf --output=$(OUT) --include=$(OUT) --format=latex
ARCHIVOSCOPIAR=$(IMAGENES) # $(INCLUDESTEX)  #BIBARCHIVOS) $(IMAGENES)  $(INCLUDESVERB) $(FUENTESPYX) $(DATOSPYX)# $(INCLUDESTEX)
COPIAR=cp $(ARCHIVOSCOPIAR) $(OUT)

all: build show

build: $(NOMBRE).pdf

show: 
	$(RUNEVINCE)

$(NOMBRE).pdf: $(NOMBRE).tex $(INCLUDESTEX)
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
	make

.PHONY: wordcount

wordcount: dea.tex
	detex dea.tex | wc
