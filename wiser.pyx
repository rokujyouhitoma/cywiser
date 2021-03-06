from libc.stdlib cimport free, malloc

from wiser cimport main as c_main

def main(py_args=[]):
    cdef char **c_argv
    c_argv = <char**>malloc(sizeof(char*) * len(py_args))
    if not c_argv:
        raise MemoryError()
    py_args = [b'wiser'] + [bytes(x) for x in py_args]
    for i, s in enumerate(py_args):
        c_argv[i] = s
    try:
        c_main(len(py_args), c_argv)
    finally:
        free(c_argv)
