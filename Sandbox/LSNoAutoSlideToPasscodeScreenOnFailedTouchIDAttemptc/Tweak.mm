#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$SBLockScreenManager$setPasscodeVisible$animated$)(id, SEL, bool, bool);
static void _patched_ftt_meth_$SBLockScreenManager$setPasscodeVisible$animated$(id self, SEL _cmd, bool arg1, bool arg2) {
    arg1 = 0;
    _orig_ftt_meth_$SBLockScreenManager$setPasscodeVisible$animated$(self, _cmd, arg1, arg2);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBLockScreenManager = objc_getClass("SBLockScreenManager");
    MSHookMessageEx(_ftt_class_SBLockScreenManager, @selector(setPasscodeVisible:animated:), (IMP)_patched_ftt_meth_$SBLockScreenManager$setPasscodeVisible$animated$, (IMP *)_orig_ftt_meth_$SBLockScreenManager$setPasscodeVisible$animated$);
}
