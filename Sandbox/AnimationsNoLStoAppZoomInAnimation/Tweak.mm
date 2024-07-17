#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$SBUIAnimationLockScreenToAppZoomIn$_setHidden$)(id, SEL, bool);
static void _patched_ftt_meth_$SBUIAnimationLockScreenToAppZoomIn$_setHidden$(id self, SEL _cmd, bool arg1) {
    arg1 = 1;
    _orig_ftt_meth_$SBUIAnimationLockScreenToAppZoomIn$_setHidden$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBUIAnimationLockScreenToAppZoomIn = objc_getClass("SBUIAnimationLockScreenToAppZoomIn");
    MSHookMessageEx(_ftt_class_SBUIAnimationLockScreenToAppZoomIn, @selector(_setHidden:), (IMP)_patched_ftt_meth_$SBUIAnimationLockScreenToAppZoomIn$_setHidden$, (IMP *)_orig_ftt_meth_$SBUIAnimationLockScreenToAppZoomIn$_setHidden$);
}
