#line 1 "Tweak.xm"
#import <UIKit/UIKit.h>


#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

asm(".linker_option \"-framework\", \"CydiaSubstrate\"");

@class AVCapturePhotoSettings; 
static void (*_logos_orig$_ungrouped$AVCapturePhotoSettings$setShutterSound$)(_LOGOS_SELF_TYPE_NORMAL AVCapturePhotoSettings* _LOGOS_SELF_CONST, SEL, unsigned int); static void _logos_method$_ungrouped$AVCapturePhotoSettings$setShutterSound$(_LOGOS_SELF_TYPE_NORMAL AVCapturePhotoSettings* _LOGOS_SELF_CONST, SEL, unsigned int); static unsigned int (*_logos_orig$_ungrouped$AVCapturePhotoSettings$shutterSound)(_LOGOS_SELF_TYPE_NORMAL AVCapturePhotoSettings* _LOGOS_SELF_CONST, SEL); static unsigned int _logos_method$_ungrouped$AVCapturePhotoSettings$shutterSound(_LOGOS_SELF_TYPE_NORMAL AVCapturePhotoSettings* _LOGOS_SELF_CONST, SEL); 

#line 3 "Tweak.xm"

static void _logos_method$_ungrouped$AVCapturePhotoSettings$setShutterSound$(_LOGOS_SELF_TYPE_NORMAL AVCapturePhotoSettings* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, unsigned int arg1) {
    arg1 = 0;
    _logos_orig$_ungrouped$AVCapturePhotoSettings$setShutterSound$(self, _cmd, arg1);
}



static unsigned int _logos_method$_ungrouped$AVCapturePhotoSettings$shutterSound(_LOGOS_SELF_TYPE_NORMAL AVCapturePhotoSettings* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 0;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$AVCapturePhotoSettings = objc_getClass("AVCapturePhotoSettings"); { MSHookMessageEx(_logos_class$_ungrouped$AVCapturePhotoSettings, @selector(setShutterSound:), (IMP)&_logos_method$_ungrouped$AVCapturePhotoSettings$setShutterSound$, (IMP*)&_logos_orig$_ungrouped$AVCapturePhotoSettings$setShutterSound$);}{ MSHookMessageEx(_logos_class$_ungrouped$AVCapturePhotoSettings, @selector(shutterSound), (IMP)&_logos_method$_ungrouped$AVCapturePhotoSettings$shutterSound, (IMP*)&_logos_orig$_ungrouped$AVCapturePhotoSettings$shutterSound);}} }
#line 16 "Tweak.xm"
