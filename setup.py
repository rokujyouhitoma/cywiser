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

ext = Extension("cywiser",
                sources=["cywiser.pyx"] + sources,
                include_dirs=include_dirs,
                libraries=libraries)

setup(name="python wiser wrapper by used of cython",
      ext_modules=cythonize([ext]))
