
cdef extern from "wiser/wiser.h":
  ctypedef struct wiser_env
  cdef extern int main(int argc, char *argv[])
