# Makefile for LaTeX project

# Compiler
LATEXMK = latexmk

# Source files
MAIN_TEX = main.tex
PREAMBLE = preamble.tex
SECTIONS = $(wildcard sections/*.tex)

# Output directory
OUT_DIR = out

# Target PDF
PDF = $(OUT_DIR)/$(MAIN_TEX:.tex=.pdf)

# Default target
all: $(PDF)

# Rule to build the PDF
# The PDF depends on the main file, the preamble, and all section files.
$(PDF): $(MAIN_TEX) $(PREAMBLE) $(SECTIONS)
	@echo "Compiling LaTeX project..."
	# Create output directory if it doesn't exist
	@mkdir -p $(OUT_DIR)
	# Run latexmk to build the PDF in the output directory
	$(LATEXMK) -pdf -output-directory=$(OUT_DIR) $(MAIN_TEX)
	@echo "Compilation finished. PDF is at $(PDF)"

# Clean up generated files
clean:
	@echo "Cleaning up generated files..."
	# Use latexmk's clean command
	$(LATEXMK) -C
	# Remove the output directory
	rm -rf $(OUT_DIR)
	@echo "Cleanup complete."

# Phony targets
.PHONY: all clean
