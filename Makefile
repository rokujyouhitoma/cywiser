CC = gcc
CFLAGS = -Wall -std=c99 -D_GNU_SOURCE -D_FILE_OFFSET_BITS=64 -O3 -g -I ./include

cywiser:
	python setup.py build_ext -if

.PHONY: clean
	rm -rf cywiser.c cywiser.so build

setup:
	curl -O http://image.gihyo.co.jp/assets/files/book/2014/978-4-7741-6753-4/download/wiser-20140928.tar.gz
	tar zxf wiser-20140928.tar.gz
	mv wiser-20140928 wiser

test:
	python -c "import cywiser; print(dir(cywiser)); cywiser.main()"
