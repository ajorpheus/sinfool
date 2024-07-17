#import <UIKit/UIKit.h>

#include <substrate.h>

static id _patched_ftt_meth_$AVCaptureVideoDataOutput$init(id self, SEL _cmd) {
    return NULL;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_AVCaptureVideoDataOutput = objc_getClass("AVCaptureVideoDataOutput");
    MSHookMessageEx(_ftt_class_AVCaptureVideoDataOutput, @selector(init), (IMP)_patched_ftt_meth_$AVCaptureVideoDataOutput$init, NULL);
}
