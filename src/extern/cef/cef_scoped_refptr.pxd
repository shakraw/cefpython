# Copyright (c) 2016 CEF Python, see the Authors file.
# All rights reserved. Licensed under BSD 3-clause license.
# Project website: https://github.com/cztomczak/cefpython
from libcpp cimport nullptr_t, nullptr
from libcpp cimport bool as cpp_bool

cdef extern from "include/base/cef_scoped_refptr.h":
    cdef cppclass scoped_refptr[T]:
        scoped_refptr()
        # noinspection PyUnresolvedReferences
        scoped_refptr(T* p)
        # noinspection PyUnresolvedReferences
        void reset()
        # noinspection PyUnresolvedReferences
        void reset(T* p)
        # noinspection PyUnresolvedReferences
        T* get()
        # noinspection PyUnresolvedReferences
        scoped_refptr[T]& Assign "operator="(nullptr_t)

        scoped_refptr[T]& Assign "operator="(scoped_refptr[T] p)

        #cpp_bool Assign "operator=="(const scoped_refptr[U]& rhs) const

        #cpp_bool Assign "operator!="(const scoped_refptr[U]& rhs) const
