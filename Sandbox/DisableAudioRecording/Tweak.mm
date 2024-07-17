#import <UIKit/UIKit.h>

#include <substrate.h>

static id _patched_ftt_meth_$CAMCaptureEngine$audioCaptureDevice(id self, SEL _cmd) {
    return NULL;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_CAMCaptureEngine = objc_getClass("CAMCaptureEngine");
    MSHookMessageEx(_ftt_class_CAMCaptureEngine, @selector(audioCaptureDevice), (IMP)_patched_ftt_meth_$CAMCaptureEngine$audioCaptureDevice, NULL);
}
