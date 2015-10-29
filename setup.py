from distutils.core import setup, Extension
from Cython.Build import cythonize

wiser_dir = "wiser/"

sources = [
    wiser_dir + "database.c",
    wiser_dir + "postings.c",
    wiser_dir + "search.c",
    wiser_dir + "token.c",
    wiser_dir + "util.c",
    wiser_dir + "wikiload.c",
    wiser_dir + "wiser.c",
]

include_dirs = [
    wiser_dir + "include/"
]

libraries = [
    "sqlite3",
    "expat",
    "m",
]

DEBUG = True
if DEBUG:
    CFLAGS=["-Wall", "-std=c99", "-D_GNU_SOURCE", "-D_FILE_OFFSET_BITS=64", "-O3", "-g"]
else:
    CFLAGS=["-Wall", "-std=c99", "-D_GNU_SOURCE", "-D_FILE_OFFSET_BITS=64", "-O3", "-g"]

ext = Extension("wiser",
                sources=["wiser.pyx"] + sources,
                include_dirs=include_dirs,
                libraries=libraries,
                language="c",
                extra_compile_args=CFLAGS)

setup(name="Python wrapper for wiser by used of Cython",
      ext_modules=cythonize([ext]))
