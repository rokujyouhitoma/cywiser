# cywiser

Python wrapper for wiser by used of Cython.

# Requirements

1. wiser
2. cython
3. python

# Setup environment

```bash
pip install -r requirements.txt
```

```bash
curl -O http://image.gihyo.co.jp/assets/files/book/2014/978-4-7741-6753-4/download/wiser-20140928.tar.gz
tar zxf wiser-20140928.tar.gz
mv wiser-20140928 wiser
```

# Build

```bash
make && make test
```

## Refer

1. http://gihyo.jp/book/2014/978-4-7741-6753-4

# About wiser

> This program enables you to fulltext-search for wikipedia.

## Requirements

1. sqlite3
2. expat
3. m
