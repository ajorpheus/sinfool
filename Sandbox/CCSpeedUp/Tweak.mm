#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$SBControlCenterController$presentAnimated$)(id, SEL, bool);
static void _patched_ftt_meth_$SBControlCenterController$presentAnimated$(id self, SEL _cmd, bool arg1) {
    // Presentation Animation
    arg1 = 0;
    _orig_ftt_meth_$SBControlCenterController$presentAnimated$(self, _cmd, arg1);
}

static bool _patched_ftt_meth_$SBControlCenterSettings$useNewBounce(id self, SEL _cmd) {
    // Bounce
    return 0;
}

static void (*_orig_ftt_meth_$SBControlCenterController$dismissAnimated$)(id, SEL, bool);
static void _patched_ftt_meth_$SBControlCenterController$dismissAnimated$(id self, SEL _cmd, bool arg1) {
    // Dismiss Animation
    arg1 = 0;
    _orig_ftt_meth_$SBControlCenterController$dismissAnimated$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBControlCenterController = objc_getClass("SBControlCenterController");
    MSHookMessageEx(_ftt_class_SBControlCenterController, @selector(presentAnimated:), (IMP)_patched_ftt_meth_$SBControlCenterController$presentAnimated$, (IMP *)_orig_ftt_meth_$SBControlCenterController$presentAnimated$);
    Class _ftt_class_SBControlCenterSettings = objc_getClass("SBControlCenterSettings");
    MSHookMessageEx(_ftt_class_SBControlCenterSettings, @selector(useNewBounce), (IMP)_patched_ftt_meth_$SBControlCenterSettings$useNewBounce, NULL);
    MSHookMessageEx(_ftt_class_SBControlCenterController, @selector(dismissAnimated:), (IMP)_patched_ftt_meth_$SBControlCenterController$dismissAnimated$, (IMP *)_orig_ftt_meth_$SBControlCenterController$dismissAnimated$);
}
