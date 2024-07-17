#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$SBLockScreenViewController$shouldShowLockStatusBarTime(id self, SEL _cmd) {
    // •
    return 1;
}

static void (*_orig_ftt_meth_$SBLockScreenView$setTopGrabberHidden$forRequester$)(id, SEL, bool, id);
static void _patched_ftt_meth_$SBLockScreenView$setTopGrabberHidden$forRequester$(id self, SEL _cmd, bool arg1, id arg2) {
    // •
    arg1 = 1;
    _orig_ftt_meth_$SBLockScreenView$setTopGrabberHidden$forRequester$(self, _cmd, arg1, arg2);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBLockScreenViewController = objc_getClass("SBLockScreenViewController");
    MSHookMessageEx(_ftt_class_SBLockScreenViewController, @selector(shouldShowLockStatusBarTime), (IMP)_patched_ftt_meth_$SBLockScreenViewController$shouldShowLockStatusBarTime, NULL);
    Class _ftt_class_SBLockScreenView = objc_getClass("SBLockScreenView");
    MSHookMessageEx(_ftt_class_SBLockScreenView, @selector(setTopGrabberHidden:forRequester:), (IMP)_patched_ftt_meth_$SBLockScreenView$setTopGrabberHidden$forRequester$, (IMP *)_orig_ftt_meth_$SBLockScreenView$setTopGrabberHidden$forRequester$);
}
