include "cefpython.pyx"

cdef class PyDownloadItem:
    cdef CefRefPtr[CefDownloadItem] cefDownloadItem

    cpdef py_bool IsValid(self):
        return self.cefDownloadItem.get().IsValid()

    cpdef py_bool IsInProgress(self):
        return self.cefDownloadItem.get().IsInProgress()

    cpdef py_bool IsComplete(self):
        return self.cefDownloadItem.get().IsComplete()

    cpdef py_bool IsCanceled(self):
        return self.cefDownloadItem.get().IsCanceled()

    cpdef object GetCurrentSpeed(self):
        return self.cefDownloadItem.get().GetCurrentSpeed()

    cpdef object GetPercentComplete(self):
        return self.cefDownloadItem.get().GetPercentComplete()

    cpdef object GetTotalBytes(self):
        return self.cefDownloadItem.get().GetTotalBytes()

    cpdef object GetReceivedBytes(self):
        return self.cefDownloadItem.get().GetReceivedBytes()

    cpdef object GetStartTime(self):
        return self.cefDownloadItem.get().GetStartTime()

    cpdef object GetEndTime(self):
        return self.cefDownloadItem.get().GetEndTime()

    cpdef str GetFullPath(self):
        return CefToPyString(self.cefDownloadItem.get().GetFullPath())

    cpdef object GetId(self):
        return self.cefDownloadItem.get().GetId()

    cpdef str GetURL(self):
        return CefToPyString(self.cefDownloadItem.get().GetURL())

    cpdef str GetOriginalUrl(self):
        return CefToPyString(self.cefDownloadItem.get().GetOriginalUrl())

    cpdef str GetSuggestedFileName(self):
        return CefToPyString(self.cefDownloadItem.get().GetSuggestedFileName())

    cpdef str GetContentDisposition(self):
        return CefToPyString(self.cefDownloadItem.get().GetContentDisposition())

    cpdef str GetMimeType(self):
        return CefToPyString(self.cefDownloadItem.get().GetMimeType())

cdef class PyBeforeDownloadCallback:
    cdef CefRefPtr[CefBeforeDownloadCallback] cefBeforeDownloadCallback

    cpdef Continue(self, str downloadPath, py_bool showDialog):
        self.cefBeforeDownloadCallback.get().Continue(PyToCefStringValue(downloadPath), showDialog)

cdef class PyDownloadItemCallback:
    cdef CefRefPtr[CefDownloadItemCallback] cefDownloadItemCallback

    cpdef Cancel(self):
        self.cefDownloadItemCallback.get().Cancel()

    cpdef Pause(self):
        self.cefDownloadItemCallback.get().Pause()

    cpdef Resume(self):
        self.cefDownloadItemCallback.get().Resume()