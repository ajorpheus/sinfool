#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$SBNotificationCenterController$_shouldShowGrabberOnFirstSwipe(id self, SEL _cmd) {
    // NC
    return 1;
}

static bool _patched_ftt_meth_$SBControlCenterController$_shouldShowGrabberOnFirstSwipe(id self, SEL _cmd) {
    // CC
    return 1;
}

static bool _patched_ftt_meth_$SBGrabberTongue$_recognizerIsOutsideGrabberFreeZone$(id self, SEL _cmd, id arg1) {
    // Side Switcher
    return 1;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBNotificationCenterController = objc_getClass("SBNotificationCenterController");
    MSHookMessageEx(_ftt_class_SBNotificationCenterController, @selector(_shouldShowGrabberOnFirstSwipe), (IMP)_patched_ftt_meth_$SBNotificationCenterController$_shouldShowGrabberOnFirstSwipe, NULL);
    Class _ftt_class_SBControlCenterController = objc_getClass("SBControlCenterController");
    MSHookMessageEx(_ftt_class_SBControlCenterController, @selector(_shouldShowGrabberOnFirstSwipe), (IMP)_patched_ftt_meth_$SBControlCenterController$_shouldShowGrabberOnFirstSwipe, NULL);
    Class _ftt_class_SBGrabberTongue = objc_getClass("SBGrabberTongue");
    MSHookMessageEx(_ftt_class_SBGrabberTongue, @selector(_recognizerIsOutsideGrabberFreeZone:), (IMP)_patched_ftt_meth_$SBGrabberTongue$_recognizerIsOutsideGrabberFreeZone$, NULL);
}
