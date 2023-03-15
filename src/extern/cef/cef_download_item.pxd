include "compile_time_constants.pxi"

from libcpp cimport bool as cpp_bool
from cef_string cimport CefString
from cef_time cimport cef_time_t, cef_basetime_t
from cef_types cimport (
    int32, uint32, int64, uint64
)

cdef extern from "include/cef_download_item.h":
    cdef cppclass CefDownloadItem:
        cpp_bool IsValid()

        cpp_bool IsInProgress()

        cpp_bool IsComplete()

        cpp_bool IsCanceled()

        int64 GetCurrentSpeed()

        int GetPercentComplete()

        int64 GetTotalBytes()

        int64 GetReceivedBytes()

        cef_basetime_t GetStartTime()

        cef_basetime_t GetEndTime()

        CefString GetFullPath()

        uint32 GetId()

        CefString GetURL()

        CefString GetOriginalUrl()

        CefString GetSuggestedFileName()

        CefString GetContentDisposition()

        CefString GetMimeType()