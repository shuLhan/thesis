BIB:=bibliography.bib
OUTDIR:=CD
BUILDER:=latexmk -pdf -quiet

.PHONY: clean

all: ${OUTDIR} \
	${OUTDIR}/23513014_Muhamad_Sulhan_-_Abstrak.pdf \
	${OUTDIR}/23513014_Muhamad_Sulhan_-_Abstract.pdf \
	${OUTDIR}/23513014_Muhamad_Sulhan_-_Tesis.pdf \
	${OUTDIR}/23513014_Muhamad_Sulhan_-_Paper.pdf

${OUTDIR}:
	mkdir -p ${OUTDIR}

${OUTDIR}/23513014_Muhamad_Sulhan_-_Abstrak.pdf: abstrak/23513014_Muhamad_Sulhan_-_Abstrak.tex ${BIB}
	cd abstrak && \
		$(BUILDER) 23513014_Muhamad_Sulhan_-_Abstrak.tex && \
		cp tmp/23513014_Muhamad_Sulhan_-_Abstrak.pdf ../${OUTDIR}/

${OUTDIR}/23513014_Muhamad_Sulhan_-_Abstract.pdf: abstract/23513014_Muhamad_Sulhan_-_Abstract.tex ${BIB}
	cd abstract && \
		$(BUILDER) 23513014_Muhamad_Sulhan_-_Abstract.tex && \
		cp tmp/23513014_Muhamad_Sulhan_-_Abstract.pdf ../${OUTDIR}/

${OUTDIR}/23513014_Muhamad_Sulhan_-_Tesis.pdf: report/23513014_Muhamad_Sulhan_-_Tesis.tex ${BIB}
	cd report && \
		$(BUILDER) 23513014_Muhamad_Sulhan_-_Tesis.tex && \
		cp tmp/23513014_Muhamad_Sulhan_-_Tesis.pdf ../${OUTDIR}/

$(OUTDIR)/23513014_Muhamad_Sulhan_-_Paper.pdf: paper/23513014_Muhamad_Sulhan_-_Paper.tex $(BIB)
	cd paper && \
		$(BUILDER) 23513014_Muhamad_Sulhan_-_Paper.tex && \
		cp tmp/23513014_Muhamad_Sulhan_-_Paper.pdf ../$(OUTDIR)/

clean:
	rm -rf ${OUTDIR}
