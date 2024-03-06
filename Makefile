#Variables
STRUCTURIZR_CLI  := docker run -it -u $(id -u):$(id -g) -v .:/usr/local/structurizr structurizr/cli
STRUCTURIZR_LITE :=
ASCIIDOCTOR_CLI  := docker run -it -u $(id -u):$(id -g) -v .:/documents/ asciidoctor/docker-asciidoctor

all: build

clean:
	rm -fR target

generate-puml: clean src/model
	${STRUCTURIZR_CLI} export -w src/model/workspace.dsl -f plantuml/c4plantuml -o target/puml

build: generate-puml
	${ASCIIDOCTOR_CLI} asciidoctor -r asciidoctor-diagram -D target/adoc src/doc/index.adoc

.PHONY: build generate-puml clean
