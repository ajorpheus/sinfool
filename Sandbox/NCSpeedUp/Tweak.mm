#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$SBNotificationCenterController$dismissAnimated$)(id, SEL, bool);
static void _patched_ftt_meth_$SBNotificationCenterController$dismissAnimated$(id self, SEL _cmd, bool arg1) {
    // Dismiss Animation
    arg1 = 0;
    _orig_ftt_meth_$SBNotificationCenterController$dismissAnimated$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBNotificationCenterController = objc_getClass("SBNotificationCenterController");
    MSHookMessageEx(_ftt_class_SBNotificationCenterController, @selector(dismissAnimated:), (IMP)_patched_ftt_meth_$SBNotificationCenterController$dismissAnimated$, (IMP *)_orig_ftt_meth_$SBNotificationCenterController$dismissAnimated$);
}
