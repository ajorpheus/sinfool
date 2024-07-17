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

@class CAMCaptureConfiguration; @class CAMUserPreferences; 
static bool (*_logos_orig$_ungrouped$CAMUserPreferences$shouldResetCaptureConfiguration)(_LOGOS_SELF_TYPE_NORMAL CAMUserPreferences* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$CAMUserPreferences$shouldResetCaptureConfiguration(_LOGOS_SELF_TYPE_NORMAL CAMUserPreferences* _LOGOS_SELF_CONST, SEL); static CAMCaptureConfiguration* (*_logos_orig$_ungrouped$CAMCaptureConfiguration$initWithCaptureMode$captureDevice$flashMode$torchMode$HDRMode$irisMode$timerDuration$photoModeEffectFilterType$squareModeEffectFilterType$)(_LOGOS_SELF_TYPE_INIT CAMCaptureConfiguration*, SEL, long long, long long, long long, long long, long long, long long, long long, long long, long long) _LOGOS_RETURN_RETAINED; static CAMCaptureConfiguration* _logos_method$_ungrouped$CAMCaptureConfiguration$initWithCaptureMode$captureDevice$flashMode$torchMode$HDRMode$irisMode$timerDuration$photoModeEffectFilterType$squareModeEffectFilterType$(_LOGOS_SELF_TYPE_INIT CAMCaptureConfiguration*, SEL, long long, long long, long long, long long, long long, long long, long long, long long, long long) _LOGOS_RETURN_RETAINED; 

#line 3 "Tweak.xm"

static bool _logos_method$_ungrouped$CAMUserPreferences$shouldResetCaptureConfiguration(_LOGOS_SELF_TYPE_NORMAL CAMUserPreferences* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 1;
}



static CAMCaptureConfiguration* _logos_method$_ungrouped$CAMCaptureConfiguration$initWithCaptureMode$captureDevice$flashMode$torchMode$HDRMode$irisMode$timerDuration$photoModeEffectFilterType$squareModeEffectFilterType$(_LOGOS_SELF_TYPE_INIT CAMCaptureConfiguration* __unused self, SEL __unused _cmd, long long arg1, long long arg2, long long arg3, long long arg4, long long arg5, long long arg6, long long arg7, long long arg8, long long arg9) _LOGOS_RETURN_RETAINED {
    
    arg8 = 6;
    arg9 = 6;
    return _logos_orig$_ungrouped$CAMCaptureConfiguration$initWithCaptureMode$captureDevice$flashMode$torchMode$HDRMode$irisMode$timerDuration$photoModeEffectFilterType$squareModeEffectFilterType$(self, _cmd, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9);
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$CAMUserPreferences = objc_getClass("CAMUserPreferences"); { MSHookMessageEx(_logos_class$_ungrouped$CAMUserPreferences, @selector(shouldResetCaptureConfiguration), (IMP)&_logos_method$_ungrouped$CAMUserPreferences$shouldResetCaptureConfiguration, (IMP*)&_logos_orig$_ungrouped$CAMUserPreferences$shouldResetCaptureConfiguration);}Class _logos_class$_ungrouped$CAMCaptureConfiguration = objc_getClass("CAMCaptureConfiguration"); { MSHookMessageEx(_logos_class$_ungrouped$CAMCaptureConfiguration, @selector(initWithCaptureMode:captureDevice:flashMode:torchMode:HDRMode:irisMode:timerDuration:photoModeEffectFilterType:squareModeEffectFilterType:), (IMP)&_logos_method$_ungrouped$CAMCaptureConfiguration$initWithCaptureMode$captureDevice$flashMode$torchMode$HDRMode$irisMode$timerDuration$photoModeEffectFilterType$squareModeEffectFilterType$, (IMP*)&_logos_orig$_ungrouped$CAMCaptureConfiguration$initWithCaptureMode$captureDevice$flashMode$torchMode$HDRMode$irisMode$timerDuration$photoModeEffectFilterType$squareModeEffectFilterType$);}} }
#line 19 "Tweak.xm"
