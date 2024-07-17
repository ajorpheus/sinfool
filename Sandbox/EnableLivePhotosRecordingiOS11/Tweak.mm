#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$CAMCaptureCapabilities$isBackIrisSupported(id self, SEL _cmd) {
    return 1;
}

static bool _patched_ftt_meth_$CAMCaptureCapabilities$isFrontIrisSupported(id self, SEL _cmd) {
    return 1;
}

static bool _patched_ftt_meth_$AVCaptureDeviceFormat$isIrisSupported(id self, SEL _cmd) {
    return 1;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_CAMCaptureCapabilities = objc_getClass("CAMCaptureCapabilities");
    MSHookMessageEx(_ftt_class_CAMCaptureCapabilities, @selector(isBackIrisSupported), (IMP)_patched_ftt_meth_$CAMCaptureCapabilities$isBackIrisSupported, NULL);
    MSHookMessageEx(_ftt_class_CAMCaptureCapabilities, @selector(isFrontIrisSupported), (IMP)_patched_ftt_meth_$CAMCaptureCapabilities$isFrontIrisSupported, NULL);
    Class _ftt_class_AVCaptureDeviceFormat = objc_getClass("AVCaptureDeviceFormat");
    MSHookMessageEx(_ftt_class_AVCaptureDeviceFormat, @selector(isIrisSupported), (IMP)_patched_ftt_meth_$AVCaptureDeviceFormat$isIrisSupported, NULL);
}
