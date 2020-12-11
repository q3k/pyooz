# distutils: sources = kraken.cpp bitknit.cpp lzna.cpp

from libc.stdlib cimport malloc, free

cimport ooz

def decompress(data, out_len):
    cdef char* out = <char *> malloc((out_len + 64) * sizeof(char))
    cdef char* in_ = data;
    cdef int sz = ooz.Kraken_Decompress(in_, len(data), out, out_len)
    if sz < 0:
        free(out);
        raise Exception("decompression failed")
    cdef bytes res = out[:out_len];
    free(out);
    return res
