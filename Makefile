
BUILD_DIR ?= ./build

.PHONY: clean

all: ${BUILD_DIR}/docker-quick-ref.pdf

clean:
	rm -r build

${BUILD_DIR}:
	mkdir -p ${BUILD_DIR}

${BUILD_DIR}/%.pdf: %.latex ${BUILD_DIR}
	pdflatex -output-directory ${BUILD_DIR} $<
