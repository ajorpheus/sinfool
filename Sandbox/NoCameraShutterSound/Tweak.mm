#import <UIKit/UIKit.h>

#include <substrate.h>

static unsigned long _patched_ftt_meth_$AVCaptureIrisStillImageSettings$shutterSound(id self, SEL _cmd) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_AVCaptureIrisStillImageSettings = objc_getClass("AVCaptureIrisStillImageSettings");
    MSHookMessageEx(_ftt_class_AVCaptureIrisStillImageSettings, @selector(shutterSound), (IMP)_patched_ftt_meth_$AVCaptureIrisStillImageSettings$shutterSound, NULL);
}
