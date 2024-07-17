#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$SBNotificationCenterController$_shouldShowGrabberOnFirstSwipe(id self, SEL _cmd) {
    // Show NC Grabber On First Swipe
    return 0;
}

static bool _patched_ftt_meth_$SBControlCenterController$_shouldShowGrabberOnFirstSwipe(id self, SEL _cmd) {
    // Show CC Grabber On First Swipe
    return 0;
}

static long long _patched_ftt_meth_$SpringBoard$_statusBar$styleForRequestedStyle$overrides$(id self, SEL _cmd, id arg1, long long arg2, int arg3) {
    return -1;
}

static bool _patched_ftt_meth_$SBAppStatusBarTransitionInfo$zoomOther(id self, SEL _cmd) {
    return 0;
}

static bool _patched_ftt_meth_$UIStatusBarStyleRequest$isDoubleHeight(id self, SEL _cmd) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBNotificationCenterController = objc_getClass("SBNotificationCenterController");
    MSHookMessageEx(_ftt_class_SBNotificationCenterController, @selector(_shouldShowGrabberOnFirstSwipe), (IMP)_patched_ftt_meth_$SBNotificationCenterController$_shouldShowGrabberOnFirstSwipe, NULL);
    Class _ftt_class_SBControlCenterController = objc_getClass("SBControlCenterController");
    MSHookMessageEx(_ftt_class_SBControlCenterController, @selector(_shouldShowGrabberOnFirstSwipe), (IMP)_patched_ftt_meth_$SBControlCenterController$_shouldShowGrabberOnFirstSwipe, NULL);
    Class _ftt_class_SpringBoard = objc_getClass("SpringBoard");
    MSHookMessageEx(_ftt_class_SpringBoard, @selector(_statusBar:styleForRequestedStyle:overrides:), (IMP)_patched_ftt_meth_$SpringBoard$_statusBar$styleForRequestedStyle$overrides$, NULL);
    Class _ftt_class_SBAppStatusBarTransitionInfo = objc_getClass("SBAppStatusBarTransitionInfo");
    MSHookMessageEx(_ftt_class_SBAppStatusBarTransitionInfo, @selector(zoomOther), (IMP)_patched_ftt_meth_$SBAppStatusBarTransitionInfo$zoomOther, NULL);
    Class _ftt_class_UIStatusBarStyleRequest = objc_getClass("UIStatusBarStyleRequest");
    MSHookMessageEx(_ftt_class_UIStatusBarStyleRequest, @selector(isDoubleHeight), (IMP)_patched_ftt_meth_$UIStatusBarStyleRequest$isDoubleHeight, NULL);
}
