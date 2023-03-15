include "compile_time_constants.pxi"

from libcpp cimport bool as cpp_bool
from cef_string cimport CefString

cdef extern from "include/cef_download_handler.h":
    cdef cppclass CefBeforeDownloadCallback:
        void Continue(const CefString& download_path, cpp_bool show_dialog)

    cdef cppclass CefDownloadItemCallback:
        void Cancel()
        void Pause()
        void Resume()