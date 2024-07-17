#import <UIKit/UIKit.h>

#include <substrate.h>

static BOOL _patched_ftt_meth_$SBControlCenterSettings$useNewBounce(id self, SEL _cmd) {
    // Disables Bounce Effect
    return 0;
}

static void (*_orig_ftt_meth_$SBControlCenterController$dismissAnimated$)(id, SEL, BOOL);
static void _patched_ftt_meth_$SBControlCenterController$dismissAnimated$(id self, SEL _cmd, BOOL arg1) {
    // Disables Closing Animation
    arg1 = 0;
    _orig_ftt_meth_$SBControlCenterController$dismissAnimated$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBControlCenterSettings = objc_getClass("SBControlCenterSettings");
    MSHookMessageEx(_ftt_class_SBControlCenterSettings, @selector(useNewBounce), (IMP)_patched_ftt_meth_$SBControlCenterSettings$useNewBounce, NULL);
    Class _ftt_class_SBControlCenterController = objc_getClass("SBControlCenterController");
    MSHookMessageEx(_ftt_class_SBControlCenterController, @selector(dismissAnimated:), (IMP)_patched_ftt_meth_$SBControlCenterController$dismissAnimated$, (IMP *)_orig_ftt_meth_$SBControlCenterController$dismissAnimated$);
}
