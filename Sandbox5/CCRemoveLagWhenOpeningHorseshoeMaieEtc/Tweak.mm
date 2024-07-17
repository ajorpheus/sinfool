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

@class SBControlCenterController; @class CCUIControlCenterSettings; 
static bool (*_logos_orig$_ungrouped$SBControlCenterController$_shouldShowGrabberOnFirstSwipe)(_LOGOS_SELF_TYPE_NORMAL SBControlCenterController* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$SBControlCenterController$_shouldShowGrabberOnFirstSwipe(_LOGOS_SELF_TYPE_NORMAL SBControlCenterController* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$CCUIControlCenterSettings$setUseNewBounce$)(_LOGOS_SELF_TYPE_NORMAL CCUIControlCenterSettings* _LOGOS_SELF_CONST, SEL, bool); static void _logos_method$_ungrouped$CCUIControlCenterSettings$setUseNewBounce$(_LOGOS_SELF_TYPE_NORMAL CCUIControlCenterSettings* _LOGOS_SELF_CONST, SEL, bool); 

#line 3 "Tweak.xm"

static bool _logos_method$_ungrouped$SBControlCenterController$_shouldShowGrabberOnFirstSwipe(_LOGOS_SELF_TYPE_NORMAL SBControlCenterController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 0;
}



static void _logos_method$_ungrouped$CCUIControlCenterSettings$setUseNewBounce$(_LOGOS_SELF_TYPE_NORMAL CCUIControlCenterSettings* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, bool arg1) {
    arg1 = 0;
    _logos_orig$_ungrouped$CCUIControlCenterSettings$setUseNewBounce$(self, _cmd, arg1);
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SBControlCenterController = objc_getClass("SBControlCenterController"); { MSHookMessageEx(_logos_class$_ungrouped$SBControlCenterController, @selector(_shouldShowGrabberOnFirstSwipe), (IMP)&_logos_method$_ungrouped$SBControlCenterController$_shouldShowGrabberOnFirstSwipe, (IMP*)&_logos_orig$_ungrouped$SBControlCenterController$_shouldShowGrabberOnFirstSwipe);}Class _logos_class$_ungrouped$CCUIControlCenterSettings = objc_getClass("CCUIControlCenterSettings"); { MSHookMessageEx(_logos_class$_ungrouped$CCUIControlCenterSettings, @selector(setUseNewBounce:), (IMP)&_logos_method$_ungrouped$CCUIControlCenterSettings$setUseNewBounce$, (IMP*)&_logos_orig$_ungrouped$CCUIControlCenterSettings$setUseNewBounce$);}} }
#line 16 "Tweak.xm"
