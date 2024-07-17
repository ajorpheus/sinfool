#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$SBLockScreenView$setCustomSlideToUnlockText$)(id, SEL, id);
static void _patched_ftt_meth_$SBLockScreenView$setCustomSlideToUnlockText$(id self, SEL _cmd, id arg1) {
    // ...set Custom Text
    arg1 = @"Flex 2";
    _orig_ftt_meth_$SBLockScreenView$setCustomSlideToUnlockText$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBLockScreenView = objc_getClass("SBLockScreenView");
    MSHookMessageEx(_ftt_class_SBLockScreenView, @selector(setCustomSlideToUnlockText:), (IMP)_patched_ftt_meth_$SBLockScreenView$setCustomSlideToUnlockText$, (IMP *)_orig_ftt_meth_$SBLockScreenView$setCustomSlideToUnlockText$);
}
