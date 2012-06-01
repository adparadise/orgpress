################################################################################
# TOOLS
################################################################################

PDFLATEX			= pdflatex
PDFLATEXFLAGS			= -shell-escape -interaction nonstopmode -output-directory $(@D) \
				  -halt-on-error

################################################################################
# VARIABLES
################################################################################

outputs				= $(OP_BOOK_NAME).pdf

################################################################################
# RULES
################################################################################

%.pdf: export TEXINPUTS = .:$(VPATH):
%.pdf: %.tex
	$(PDFLATEX) $(PDFLATEXFLAGS) $< && \
	$(PDFLATEX) $(PDFLATEXFLAGS) $< && \
	$(PDFLATEX) $(PDFLATEXFLAGS) $<
