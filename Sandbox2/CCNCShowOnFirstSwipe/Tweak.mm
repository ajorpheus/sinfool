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

@class SBNotificationCenterController; @class SBControlCenterController; 
static bool (*_logos_orig$_ungrouped$SBNotificationCenterController$_shouldShowGrabberOnFirstSwipe)(_LOGOS_SELF_TYPE_NORMAL SBNotificationCenterController* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$SBNotificationCenterController$_shouldShowGrabberOnFirstSwipe(_LOGOS_SELF_TYPE_NORMAL SBNotificationCenterController* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$SBControlCenterController$_shouldShowGrabberOnFirstSwipe)(_LOGOS_SELF_TYPE_NORMAL SBControlCenterController* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$SBControlCenterController$_shouldShowGrabberOnFirstSwipe(_LOGOS_SELF_TYPE_NORMAL SBControlCenterController* _LOGOS_SELF_CONST, SEL); 

#line 3 "Tweak.xm"

static bool _logos_method$_ungrouped$SBNotificationCenterController$_shouldShowGrabberOnFirstSwipe(_LOGOS_SELF_TYPE_NORMAL SBNotificationCenterController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 0;
}



static bool _logos_method$_ungrouped$SBControlCenterController$_shouldShowGrabberOnFirstSwipe(_LOGOS_SELF_TYPE_NORMAL SBControlCenterController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 0;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SBNotificationCenterController = objc_getClass("SBNotificationCenterController"); { MSHookMessageEx(_logos_class$_ungrouped$SBNotificationCenterController, @selector(_shouldShowGrabberOnFirstSwipe), (IMP)&_logos_method$_ungrouped$SBNotificationCenterController$_shouldShowGrabberOnFirstSwipe, (IMP*)&_logos_orig$_ungrouped$SBNotificationCenterController$_shouldShowGrabberOnFirstSwipe);}Class _logos_class$_ungrouped$SBControlCenterController = objc_getClass("SBControlCenterController"); { MSHookMessageEx(_logos_class$_ungrouped$SBControlCenterController, @selector(_shouldShowGrabberOnFirstSwipe), (IMP)&_logos_method$_ungrouped$SBControlCenterController$_shouldShowGrabberOnFirstSwipe, (IMP*)&_logos_orig$_ungrouped$SBControlCenterController$_shouldShowGrabberOnFirstSwipe);}} }
#line 17 "Tweak.xm"
