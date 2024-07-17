#import <UIKit/UIKit.h>

#include <substrate.h>

static unsigned long _patched_ftt_meth_$AVCaptureStillImageOutput$shutterSound(id self, SEL _cmd) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_AVCaptureStillImageOutput = objc_getClass("AVCaptureStillImageOutput");
    MSHookMessageEx(_ftt_class_AVCaptureStillImageOutput, @selector(shutterSound), (IMP)_patched_ftt_meth_$AVCaptureStillImageOutput$shutterSound, NULL);
}
