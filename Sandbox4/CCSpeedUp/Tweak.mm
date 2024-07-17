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

@class SBControlCenterController; @class SBControlCenterSettings; 
static void (*_logos_orig$_ungrouped$SBControlCenterController$presentAnimated$)(_LOGOS_SELF_TYPE_NORMAL SBControlCenterController* _LOGOS_SELF_CONST, SEL, bool); static void _logos_method$_ungrouped$SBControlCenterController$presentAnimated$(_LOGOS_SELF_TYPE_NORMAL SBControlCenterController* _LOGOS_SELF_CONST, SEL, bool); static void (*_logos_orig$_ungrouped$SBControlCenterController$dismissAnimated$)(_LOGOS_SELF_TYPE_NORMAL SBControlCenterController* _LOGOS_SELF_CONST, SEL, bool); static void _logos_method$_ungrouped$SBControlCenterController$dismissAnimated$(_LOGOS_SELF_TYPE_NORMAL SBControlCenterController* _LOGOS_SELF_CONST, SEL, bool); static bool (*_logos_orig$_ungrouped$SBControlCenterSettings$useNewBounce)(_LOGOS_SELF_TYPE_NORMAL SBControlCenterSettings* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$SBControlCenterSettings$useNewBounce(_LOGOS_SELF_TYPE_NORMAL SBControlCenterSettings* _LOGOS_SELF_CONST, SEL); 

#line 3 "Tweak.xm"

static void _logos_method$_ungrouped$SBControlCenterController$presentAnimated$(_LOGOS_SELF_TYPE_NORMAL SBControlCenterController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, bool arg1) {
    
    arg1 = 0;
    _logos_orig$_ungrouped$SBControlCenterController$presentAnimated$(self, _cmd, arg1);
}



static bool _logos_method$_ungrouped$SBControlCenterSettings$useNewBounce(_LOGOS_SELF_TYPE_NORMAL SBControlCenterSettings* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 0;
}



static void _logos_method$_ungrouped$SBControlCenterController$dismissAnimated$(_LOGOS_SELF_TYPE_NORMAL SBControlCenterController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, bool arg1) {
    
    arg1 = 0;
    _logos_orig$_ungrouped$SBControlCenterController$dismissAnimated$(self, _cmd, arg1);
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SBControlCenterController = objc_getClass("SBControlCenterController"); { MSHookMessageEx(_logos_class$_ungrouped$SBControlCenterController, @selector(presentAnimated:), (IMP)&_logos_method$_ungrouped$SBControlCenterController$presentAnimated$, (IMP*)&_logos_orig$_ungrouped$SBControlCenterController$presentAnimated$);}{ MSHookMessageEx(_logos_class$_ungrouped$SBControlCenterController, @selector(dismissAnimated:), (IMP)&_logos_method$_ungrouped$SBControlCenterController$dismissAnimated$, (IMP*)&_logos_orig$_ungrouped$SBControlCenterController$dismissAnimated$);}Class _logos_class$_ungrouped$SBControlCenterSettings = objc_getClass("SBControlCenterSettings"); { MSHookMessageEx(_logos_class$_ungrouped$SBControlCenterSettings, @selector(useNewBounce), (IMP)&_logos_method$_ungrouped$SBControlCenterSettings$useNewBounce, (IMP*)&_logos_orig$_ungrouped$SBControlCenterSettings$useNewBounce);}} }
#line 26 "Tweak.xm"
