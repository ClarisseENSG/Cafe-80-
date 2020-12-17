all:
	make -C $(CURDIR) clean
	make -C $(CURDIR) dist

main.html:
	asciidoctor main.adoc

.PHONY: dist
dist: main.html
	mkdir -p ./dist
	cp ./main.html ./dist/index.html
	cp -r ./img ./dist

.PHONY: clean
clean:
	rm -rf ./dist/ ./main.html