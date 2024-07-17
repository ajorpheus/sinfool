#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$SBLockScreenNowPlayingController$setEnabled$)(id, SEL, bool);
static void _patched_ftt_meth_$SBLockScreenNowPlayingController$setEnabled$(id self, SEL _cmd, bool arg1) {
    arg1 = 0;
    _orig_ftt_meth_$SBLockScreenNowPlayingController$setEnabled$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBLockScreenNowPlayingController = objc_getClass("SBLockScreenNowPlayingController");
    MSHookMessageEx(_ftt_class_SBLockScreenNowPlayingController, @selector(setEnabled:), (IMP)_patched_ftt_meth_$SBLockScreenNowPlayingController$setEnabled$, (IMP *)_orig_ftt_meth_$SBLockScreenNowPlayingController$setEnabled$);
}
