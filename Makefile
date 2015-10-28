CC = gcc

cywiser:
	python setup.py build_ext -if

.PHONY: clean
clean:
	rm -rf wiser.c wiser.so build

setup:
	curl -O http://image.gihyo.co.jp/assets/files/book/2014/978-4-7741-6753-4/download/wiser-20140928.tar.gz
	tar zxf wiser-20140928.tar.gz
	mv wiser-20140928 wiser

test: test1 test2 test3

test1:
	python -c "import wiser; print(dir(wiser))"

test2:
	python -c "import wiser; print(dir(wiser)); wiser.main()"

test3:
	python -c "import wiser; print(dir(wiser)); wiser.main(['-x','../wiser/jawiki-latest-pages-articles.xml', '-m', '1000', 'wikipedia_1000.db'])"
