#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$AVCapturePhotoSettings$setShutterSound$)(id, SEL, unsigned int);
static void _patched_ftt_meth_$AVCapturePhotoSettings$setShutterSound$(id self, SEL _cmd, unsigned int arg1) {
    arg1 = 0;
    _orig_ftt_meth_$AVCapturePhotoSettings$setShutterSound$(self, _cmd, arg1);
}

static unsigned int _patched_ftt_meth_$AVCapturePhotoSettings$shutterSound(id self, SEL _cmd) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_AVCapturePhotoSettings = objc_getClass("AVCapturePhotoSettings");
    MSHookMessageEx(_ftt_class_AVCapturePhotoSettings, @selector(setShutterSound:), (IMP)_patched_ftt_meth_$AVCapturePhotoSettings$setShutterSound$, (IMP *)_orig_ftt_meth_$AVCapturePhotoSettings$setShutterSound$);
    MSHookMessageEx(_ftt_class_AVCapturePhotoSettings, @selector(shutterSound), (IMP)_patched_ftt_meth_$AVCapturePhotoSettings$shutterSound, NULL);
}
