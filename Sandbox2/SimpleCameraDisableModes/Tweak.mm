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

@class CAMModeDial; @class CAMCaptureCapabilities; 
static bool (*_logos_orig$_ungrouped$CAMCaptureCapabilities$isBackTimelapseSupported)(_LOGOS_SELF_TYPE_NORMAL CAMCaptureCapabilities* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$CAMCaptureCapabilities$isBackTimelapseSupported(_LOGOS_SELF_TYPE_NORMAL CAMCaptureCapabilities* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$CAMCaptureCapabilities$isFrontTimelapseSupported)(_LOGOS_SELF_TYPE_NORMAL CAMCaptureCapabilities* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$CAMCaptureCapabilities$isFrontTimelapseSupported(_LOGOS_SELF_TYPE_NORMAL CAMCaptureCapabilities* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$CAMCaptureCapabilities$isBackSlomoSupported)(_LOGOS_SELF_TYPE_NORMAL CAMCaptureCapabilities* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$CAMCaptureCapabilities$isBackSlomoSupported(_LOGOS_SELF_TYPE_NORMAL CAMCaptureCapabilities* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$CAMCaptureCapabilities$isFrontSlomoSupported)(_LOGOS_SELF_TYPE_NORMAL CAMCaptureCapabilities* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$CAMCaptureCapabilities$isFrontSlomoSupported(_LOGOS_SELF_TYPE_NORMAL CAMCaptureCapabilities* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$CAMCaptureCapabilities$isSquareModeSupported)(_LOGOS_SELF_TYPE_NORMAL CAMCaptureCapabilities* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$CAMCaptureCapabilities$isSquareModeSupported(_LOGOS_SELF_TYPE_NORMAL CAMCaptureCapabilities* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$CAMCaptureCapabilities$isBackPanoramaSupported)(_LOGOS_SELF_TYPE_NORMAL CAMCaptureCapabilities* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$CAMCaptureCapabilities$isBackPanoramaSupported(_LOGOS_SELF_TYPE_NORMAL CAMCaptureCapabilities* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$CAMCaptureCapabilities$isFrontPanoramaSupported)(_LOGOS_SELF_TYPE_NORMAL CAMCaptureCapabilities* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$CAMCaptureCapabilities$isFrontPanoramaSupported(_LOGOS_SELF_TYPE_NORMAL CAMCaptureCapabilities* _LOGOS_SELF_CONST, SEL); static CAMModeDial* (*_logos_orig$_ungrouped$CAMModeDial$initWithFrame$)(_LOGOS_SELF_TYPE_INIT CAMModeDial*, SEL, CGRect) _LOGOS_RETURN_RETAINED; static CAMModeDial* _logos_method$_ungrouped$CAMModeDial$initWithFrame$(_LOGOS_SELF_TYPE_INIT CAMModeDial*, SEL, CGRect) _LOGOS_RETURN_RETAINED; 

#line 3 "Tweak.xm"

static bool _logos_method$_ungrouped$CAMCaptureCapabilities$isBackTimelapseSupported(_LOGOS_SELF_TYPE_NORMAL CAMCaptureCapabilities* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 0;
}



static bool _logos_method$_ungrouped$CAMCaptureCapabilities$isFrontTimelapseSupported(_LOGOS_SELF_TYPE_NORMAL CAMCaptureCapabilities* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 0;
}



static bool _logos_method$_ungrouped$CAMCaptureCapabilities$isBackSlomoSupported(_LOGOS_SELF_TYPE_NORMAL CAMCaptureCapabilities* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 0;
}



static bool _logos_method$_ungrouped$CAMCaptureCapabilities$isFrontSlomoSupported(_LOGOS_SELF_TYPE_NORMAL CAMCaptureCapabilities* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 0;
}



static bool _logos_method$_ungrouped$CAMCaptureCapabilities$isSquareModeSupported(_LOGOS_SELF_TYPE_NORMAL CAMCaptureCapabilities* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 0;
}



static bool _logos_method$_ungrouped$CAMCaptureCapabilities$isBackPanoramaSupported(_LOGOS_SELF_TYPE_NORMAL CAMCaptureCapabilities* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 0;
}



static bool _logos_method$_ungrouped$CAMCaptureCapabilities$isFrontPanoramaSupported(_LOGOS_SELF_TYPE_NORMAL CAMCaptureCapabilities* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 0;
}



static CAMModeDial* _logos_method$_ungrouped$CAMModeDial$initWithFrame$(_LOGOS_SELF_TYPE_INIT CAMModeDial* __unused self, SEL __unused _cmd, CGRect arg1) _LOGOS_RETURN_RETAINED {
    
    return NULL;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$CAMCaptureCapabilities = objc_getClass("CAMCaptureCapabilities"); { MSHookMessageEx(_logos_class$_ungrouped$CAMCaptureCapabilities, @selector(isBackTimelapseSupported), (IMP)&_logos_method$_ungrouped$CAMCaptureCapabilities$isBackTimelapseSupported, (IMP*)&_logos_orig$_ungrouped$CAMCaptureCapabilities$isBackTimelapseSupported);}{ MSHookMessageEx(_logos_class$_ungrouped$CAMCaptureCapabilities, @selector(isFrontTimelapseSupported), (IMP)&_logos_method$_ungrouped$CAMCaptureCapabilities$isFrontTimelapseSupported, (IMP*)&_logos_orig$_ungrouped$CAMCaptureCapabilities$isFrontTimelapseSupported);}{ MSHookMessageEx(_logos_class$_ungrouped$CAMCaptureCapabilities, @selector(isBackSlomoSupported), (IMP)&_logos_method$_ungrouped$CAMCaptureCapabilities$isBackSlomoSupported, (IMP*)&_logos_orig$_ungrouped$CAMCaptureCapabilities$isBackSlomoSupported);}{ MSHookMessageEx(_logos_class$_ungrouped$CAMCaptureCapabilities, @selector(isFrontSlomoSupported), (IMP)&_logos_method$_ungrouped$CAMCaptureCapabilities$isFrontSlomoSupported, (IMP*)&_logos_orig$_ungrouped$CAMCaptureCapabilities$isFrontSlomoSupported);}{ MSHookMessageEx(_logos_class$_ungrouped$CAMCaptureCapabilities, @selector(isSquareModeSupported), (IMP)&_logos_method$_ungrouped$CAMCaptureCapabilities$isSquareModeSupported, (IMP*)&_logos_orig$_ungrouped$CAMCaptureCapabilities$isSquareModeSupported);}{ MSHookMessageEx(_logos_class$_ungrouped$CAMCaptureCapabilities, @selector(isBackPanoramaSupported), (IMP)&_logos_method$_ungrouped$CAMCaptureCapabilities$isBackPanoramaSupported, (IMP*)&_logos_orig$_ungrouped$CAMCaptureCapabilities$isBackPanoramaSupported);}{ MSHookMessageEx(_logos_class$_ungrouped$CAMCaptureCapabilities, @selector(isFrontPanoramaSupported), (IMP)&_logos_method$_ungrouped$CAMCaptureCapabilities$isFrontPanoramaSupported, (IMP*)&_logos_orig$_ungrouped$CAMCaptureCapabilities$isFrontPanoramaSupported);}Class _logos_class$_ungrouped$CAMModeDial = objc_getClass("CAMModeDial"); { MSHookMessageEx(_logos_class$_ungrouped$CAMModeDial, @selector(initWithFrame:), (IMP)&_logos_method$_ungrouped$CAMModeDial$initWithFrame$, (IMP*)&_logos_orig$_ungrouped$CAMModeDial$initWithFrame$);}} }
#line 59 "Tweak.xm"
