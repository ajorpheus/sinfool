#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$CAMCaptureCapabilities$isFrontCameraSupported(id self, SEL _cmd) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_CAMCaptureCapabilities = objc_getClass("CAMCaptureCapabilities");
    MSHookMessageEx(_ftt_class_CAMCaptureCapabilities, @selector(isFrontCameraSupported), (IMP)_patched_ftt_meth_$CAMCaptureCapabilities$isFrontCameraSupported, NULL);
}
