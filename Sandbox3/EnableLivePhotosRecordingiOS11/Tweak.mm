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

@class CAMCaptureCapabilities; @class AVCaptureDeviceFormat; 
static bool (*_logos_orig$_ungrouped$CAMCaptureCapabilities$isBackIrisSupported)(_LOGOS_SELF_TYPE_NORMAL CAMCaptureCapabilities* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$CAMCaptureCapabilities$isBackIrisSupported(_LOGOS_SELF_TYPE_NORMAL CAMCaptureCapabilities* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$CAMCaptureCapabilities$isFrontIrisSupported)(_LOGOS_SELF_TYPE_NORMAL CAMCaptureCapabilities* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$CAMCaptureCapabilities$isFrontIrisSupported(_LOGOS_SELF_TYPE_NORMAL CAMCaptureCapabilities* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$AVCaptureDeviceFormat$isIrisSupported)(_LOGOS_SELF_TYPE_NORMAL AVCaptureDeviceFormat* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$AVCaptureDeviceFormat$isIrisSupported(_LOGOS_SELF_TYPE_NORMAL AVCaptureDeviceFormat* _LOGOS_SELF_CONST, SEL); 

#line 3 "Tweak.xm"

static bool _logos_method$_ungrouped$CAMCaptureCapabilities$isBackIrisSupported(_LOGOS_SELF_TYPE_NORMAL CAMCaptureCapabilities* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 1;
}



static bool _logos_method$_ungrouped$CAMCaptureCapabilities$isFrontIrisSupported(_LOGOS_SELF_TYPE_NORMAL CAMCaptureCapabilities* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 1;
}



static bool _logos_method$_ungrouped$AVCaptureDeviceFormat$isIrisSupported(_LOGOS_SELF_TYPE_NORMAL AVCaptureDeviceFormat* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 1;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$CAMCaptureCapabilities = objc_getClass("CAMCaptureCapabilities"); { MSHookMessageEx(_logos_class$_ungrouped$CAMCaptureCapabilities, @selector(isBackIrisSupported), (IMP)&_logos_method$_ungrouped$CAMCaptureCapabilities$isBackIrisSupported, (IMP*)&_logos_orig$_ungrouped$CAMCaptureCapabilities$isBackIrisSupported);}{ MSHookMessageEx(_logos_class$_ungrouped$CAMCaptureCapabilities, @selector(isFrontIrisSupported), (IMP)&_logos_method$_ungrouped$CAMCaptureCapabilities$isFrontIrisSupported, (IMP*)&_logos_orig$_ungrouped$CAMCaptureCapabilities$isFrontIrisSupported);}Class _logos_class$_ungrouped$AVCaptureDeviceFormat = objc_getClass("AVCaptureDeviceFormat"); { MSHookMessageEx(_logos_class$_ungrouped$AVCaptureDeviceFormat, @selector(isIrisSupported), (IMP)&_logos_method$_ungrouped$AVCaptureDeviceFormat$isIrisSupported, (IMP*)&_logos_orig$_ungrouped$AVCaptureDeviceFormat$isIrisSupported);}} }
#line 21 "Tweak.xm"
