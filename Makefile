
BUILD_DIR ?= ./build

all: ${BUILD_DIR}/docker-quick-ref.pdf

.PHONY: my-pdflatex-docker
my-pdflatex-docker:
	cd my-pdflatex-docker && docker build -t my-pdflatex-docker .

.PHONY: clean
clean:
	rm -r build

${BUILD_DIR}:
	mkdir -p ${BUILD_DIR}

${BUILD_DIR}/%.pdf: %.latex ${BUILD_DIR}
	docker run -i -v $(realpath .):/app:rw my-pdflatex-docker \
		-output-directory /app/${BUILD_DIR} /app/$<
