cdef extern from "ooz.h":
    int Kraken_Decompress(const void *src, size_t src_len, void *dst, size_t dst_len)
