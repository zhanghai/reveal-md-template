run:
	reveal-md -w index.md

export:
	reveal-md --static=_export index.md
	find . -mindepth 1 -maxdepth 1 -type d ! -name '_*' -exec cp -r {} _export/ \;

clean:
	rm -rf _export/
