#import <UIKit/UIKit.h>

#include <substrate.h>

static id _patched_ftt_meth_$_SBMainScreenScreenshotProvider$flasher(id self, SEL _cmd) {
    return NULL;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class__SBMainScreenScreenshotProvider = objc_getClass("_SBMainScreenScreenshotProvider");
    MSHookMessageEx(_ftt_class__SBMainScreenScreenshotProvider, @selector(flasher), (IMP)_patched_ftt_meth_$_SBMainScreenScreenshotProvider$flasher, NULL);
}
