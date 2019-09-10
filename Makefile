#!/usr/bin/make

.DEFAULT_GOAL := publish
DATE = $(shell date -u +%s)

publish: ./docs/emperor/index.html
.PHONY: publish

./docs/emperor/index.html: ./.src/emperor/dist/doc/html/emperor/emperor/index.html ./docs/
	cp -r ./.src/emperor/dist/doc/html/emperor/emperor/ ./docs/emperor/

./.src/dist/doc/html/emperor/emperor/index.html:;

./docs/:
	mkdir $@

clean:
	$(RM) -r ./docs/
.PHONY: clean
