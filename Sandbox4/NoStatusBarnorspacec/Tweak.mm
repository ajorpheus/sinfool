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

@class SpringBoard; @class SBAppStatusBarTransitionInfo; @class SBNotificationCenterController; @class UIStatusBarStyleRequest; @class SBControlCenterController; 
static bool (*_logos_orig$_ungrouped$SBNotificationCenterController$_shouldShowGrabberOnFirstSwipe)(_LOGOS_SELF_TYPE_NORMAL SBNotificationCenterController* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$SBNotificationCenterController$_shouldShowGrabberOnFirstSwipe(_LOGOS_SELF_TYPE_NORMAL SBNotificationCenterController* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$SBControlCenterController$_shouldShowGrabberOnFirstSwipe)(_LOGOS_SELF_TYPE_NORMAL SBControlCenterController* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$SBControlCenterController$_shouldShowGrabberOnFirstSwipe(_LOGOS_SELF_TYPE_NORMAL SBControlCenterController* _LOGOS_SELF_CONST, SEL); static long long (*_logos_orig$_ungrouped$SpringBoard$_statusBar$styleForRequestedStyle$overrides$)(_LOGOS_SELF_TYPE_NORMAL SpringBoard* _LOGOS_SELF_CONST, SEL, id, long long, int); static long long _logos_method$_ungrouped$SpringBoard$_statusBar$styleForRequestedStyle$overrides$(_LOGOS_SELF_TYPE_NORMAL SpringBoard* _LOGOS_SELF_CONST, SEL, id, long long, int); static bool (*_logos_orig$_ungrouped$SBAppStatusBarTransitionInfo$zoomOther)(_LOGOS_SELF_TYPE_NORMAL SBAppStatusBarTransitionInfo* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$SBAppStatusBarTransitionInfo$zoomOther(_LOGOS_SELF_TYPE_NORMAL SBAppStatusBarTransitionInfo* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$UIStatusBarStyleRequest$isDoubleHeight)(_LOGOS_SELF_TYPE_NORMAL UIStatusBarStyleRequest* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$UIStatusBarStyleRequest$isDoubleHeight(_LOGOS_SELF_TYPE_NORMAL UIStatusBarStyleRequest* _LOGOS_SELF_CONST, SEL); 

#line 3 "Tweak.xm"

static bool _logos_method$_ungrouped$SBNotificationCenterController$_shouldShowGrabberOnFirstSwipe(_LOGOS_SELF_TYPE_NORMAL SBNotificationCenterController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 0;
}



static bool _logos_method$_ungrouped$SBControlCenterController$_shouldShowGrabberOnFirstSwipe(_LOGOS_SELF_TYPE_NORMAL SBControlCenterController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 0;
}



static long long _logos_method$_ungrouped$SpringBoard$_statusBar$styleForRequestedStyle$overrides$(_LOGOS_SELF_TYPE_NORMAL SpringBoard* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, long long arg2, int arg3) {
    return -1;
}



static bool _logos_method$_ungrouped$SBAppStatusBarTransitionInfo$zoomOther(_LOGOS_SELF_TYPE_NORMAL SBAppStatusBarTransitionInfo* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 0;
}



static bool _logos_method$_ungrouped$UIStatusBarStyleRequest$isDoubleHeight(_LOGOS_SELF_TYPE_NORMAL UIStatusBarStyleRequest* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 0;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SBNotificationCenterController = objc_getClass("SBNotificationCenterController"); { MSHookMessageEx(_logos_class$_ungrouped$SBNotificationCenterController, @selector(_shouldShowGrabberOnFirstSwipe), (IMP)&_logos_method$_ungrouped$SBNotificationCenterController$_shouldShowGrabberOnFirstSwipe, (IMP*)&_logos_orig$_ungrouped$SBNotificationCenterController$_shouldShowGrabberOnFirstSwipe);}Class _logos_class$_ungrouped$SBControlCenterController = objc_getClass("SBControlCenterController"); { MSHookMessageEx(_logos_class$_ungrouped$SBControlCenterController, @selector(_shouldShowGrabberOnFirstSwipe), (IMP)&_logos_method$_ungrouped$SBControlCenterController$_shouldShowGrabberOnFirstSwipe, (IMP*)&_logos_orig$_ungrouped$SBControlCenterController$_shouldShowGrabberOnFirstSwipe);}Class _logos_class$_ungrouped$SpringBoard = objc_getClass("SpringBoard"); { MSHookMessageEx(_logos_class$_ungrouped$SpringBoard, @selector(_statusBar:styleForRequestedStyle:overrides:), (IMP)&_logos_method$_ungrouped$SpringBoard$_statusBar$styleForRequestedStyle$overrides$, (IMP*)&_logos_orig$_ungrouped$SpringBoard$_statusBar$styleForRequestedStyle$overrides$);}Class _logos_class$_ungrouped$SBAppStatusBarTransitionInfo = objc_getClass("SBAppStatusBarTransitionInfo"); { MSHookMessageEx(_logos_class$_ungrouped$SBAppStatusBarTransitionInfo, @selector(zoomOther), (IMP)&_logos_method$_ungrouped$SBAppStatusBarTransitionInfo$zoomOther, (IMP*)&_logos_orig$_ungrouped$SBAppStatusBarTransitionInfo$zoomOther);}Class _logos_class$_ungrouped$UIStatusBarStyleRequest = objc_getClass("UIStatusBarStyleRequest"); { MSHookMessageEx(_logos_class$_ungrouped$UIStatusBarStyleRequest, @selector(isDoubleHeight), (IMP)&_logos_method$_ungrouped$UIStatusBarStyleRequest$isDoubleHeight, (IMP*)&_logos_orig$_ungrouped$UIStatusBarStyleRequest$isDoubleHeight);}} }
#line 35 "Tweak.xm"
