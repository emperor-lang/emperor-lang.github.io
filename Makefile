#!/usr/bin/make

.DEFAULT_GOAL := publish
DATE = $(shell date -u +%s)

publish: ./docs/emperor/index.html ./docs/emperor-base/index.html
.PHONY: publish

./docs/emperor/index.html: ./.src/emperor/dist/doc/html/emperor/emperor/index.html ./docs/
	cp -r ./.src/emperor/dist/doc/html/emperor/emperor/ ./docs/emperor/

./.src/dist/doc/html/emperor/emperor/index.html:;

./docs/emperor-base/index.html: ./.src/emperor-base/doc/html/index.html
	cp -r ./.src/emperor-base/doc/html/ ./docs/emperor-base/

./.src/emperor-base/doc/html/index.html:;

./docs/:
	mkdir $@

clean:
	$(RM) -r ./docs/
.PHONY: clean
