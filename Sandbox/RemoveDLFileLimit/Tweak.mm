#import <UIKit/UIKit.h>

#include <substrate.h>

static BOOL _patched_ftt_meth_$DLBrowserViewController_IDownloader$fileLimitExceeded(id self, SEL _cmd) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_DLBrowserViewController_IDownloader = objc_getClass("DLBrowserViewController_IDownloader");
    MSHookMessageEx(_ftt_class_DLBrowserViewController_IDownloader, @selector(fileLimitExceeded), (IMP)_patched_ftt_meth_$DLBrowserViewController_IDownloader$fileLimitExceeded, NULL);
}
