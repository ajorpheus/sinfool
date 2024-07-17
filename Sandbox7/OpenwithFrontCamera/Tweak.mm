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

@class CAMUserPreferences; @class CAMCaptureConfiguration; 
static bool (*_logos_orig$_ungrouped$CAMUserPreferences$shouldResetCaptureConfiguration)(_LOGOS_SELF_TYPE_NORMAL CAMUserPreferences* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$CAMUserPreferences$shouldResetCaptureConfiguration(_LOGOS_SELF_TYPE_NORMAL CAMUserPreferences* _LOGOS_SELF_CONST, SEL); static long long (*_logos_orig$_ungrouped$CAMCaptureConfiguration$device)(_LOGOS_SELF_TYPE_NORMAL CAMCaptureConfiguration* _LOGOS_SELF_CONST, SEL); static long long _logos_method$_ungrouped$CAMCaptureConfiguration$device(_LOGOS_SELF_TYPE_NORMAL CAMCaptureConfiguration* _LOGOS_SELF_CONST, SEL); 

#line 3 "Tweak.xm"

static bool _logos_method$_ungrouped$CAMUserPreferences$shouldResetCaptureConfiguration(_LOGOS_SELF_TYPE_NORMAL CAMUserPreferences* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 1;
}



static long long _logos_method$_ungrouped$CAMCaptureConfiguration$device(_LOGOS_SELF_TYPE_NORMAL CAMCaptureConfiguration* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 1;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$CAMUserPreferences = objc_getClass("CAMUserPreferences"); { MSHookMessageEx(_logos_class$_ungrouped$CAMUserPreferences, @selector(shouldResetCaptureConfiguration), (IMP)&_logos_method$_ungrouped$CAMUserPreferences$shouldResetCaptureConfiguration, (IMP*)&_logos_orig$_ungrouped$CAMUserPreferences$shouldResetCaptureConfiguration);}Class _logos_class$_ungrouped$CAMCaptureConfiguration = objc_getClass("CAMCaptureConfiguration"); { MSHookMessageEx(_logos_class$_ungrouped$CAMCaptureConfiguration, @selector(device), (IMP)&_logos_method$_ungrouped$CAMCaptureConfiguration$device, (IMP*)&_logos_orig$_ungrouped$CAMCaptureConfiguration$device);}} }
#line 16 "Tweak.xm"
