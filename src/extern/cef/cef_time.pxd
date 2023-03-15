# Copyright (c) 2013 CEF Python, see the Authors file.
# All rights reserved. Licensed under BSD 3-clause license.
# Project website: https://github.com/cztomczak/cefpython

from ctime cimport time_t
from cef_types cimport int64

cdef extern from "include/internal/cef_time.h":
    ctypedef struct cef_time_t:
        int year
        int month
        int day_of_week
        int day_of_month
        int hour
        int minute
        int second
        int millisecond

    ctypedef struct cef_basetime_t:
        int64 val

cdef extern from "include/internal/cef_types.h":
    cdef cppclass CefTime:
        CefTime()
        CefTime(cef_time_t&)
        void SetTimeT(time_t r)
        time_t GetTimeT()
