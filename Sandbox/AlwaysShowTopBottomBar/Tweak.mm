#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$MNNavigationModeController$_setNavigationBarHidden$animated$)(id, SEL, bool, bool);
static void _patched_ftt_meth_$MNNavigationModeController$_setNavigationBarHidden$animated$(id self, SEL _cmd, bool arg1, bool arg2) {
    // •
    arg2 = 1;
    _orig_ftt_meth_$MNNavigationModeController$_setNavigationBarHidden$animated$(self, _cmd, arg1, arg2);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_MNNavigationModeController = objc_getClass("MNNavigationModeController");
    MSHookMessageEx(_ftt_class_MNNavigationModeController, @selector(_setNavigationBarHidden:animated:), (IMP)_patched_ftt_meth_$MNNavigationModeController$_setNavigationBarHidden$animated$, (IMP *)_orig_ftt_meth_$MNNavigationModeController$_setNavigationBarHidden$animated$);
}
