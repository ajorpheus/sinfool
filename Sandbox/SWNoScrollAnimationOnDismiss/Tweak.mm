#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$SBAppSwitcherController$forceDismissAnimated$)(id, SEL, bool);
static void _patched_ftt_meth_$SBAppSwitcherController$forceDismissAnimated$(id self, SEL _cmd, bool arg1) {
    // •
    arg1 = 0;
    _orig_ftt_meth_$SBAppSwitcherController$forceDismissAnimated$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBAppSwitcherController = objc_getClass("SBAppSwitcherController");
    MSHookMessageEx(_ftt_class_SBAppSwitcherController, @selector(forceDismissAnimated:), (IMP)_patched_ftt_meth_$SBAppSwitcherController$forceDismissAnimated$, (IMP *)_orig_ftt_meth_$SBAppSwitcherController$forceDismissAnimated$);
}