PD = /usr/bin/pandoc
PDFLAGS = --from=markdown_mmd+yaml_metadata_block+smart --standalone
WK = /usr/bin/wkhtmltopdf
WKFLAGS = -B 25mm -T 25mm -L 25mm -R 25mm -q -s Letter
CSS ?= /home/schizo/documents/std-styles.css

%.md.pdf: %.md
		$(PD) $(PDFLAGS) --to=html -V css=$(CSS) $< | $(WK) $(WKFLAGS) - $@
