#import <UIKit/UIKit.h>

#include <substrate.h>

static float _patched_ftt_meth_$SBLockScreenSettings$lockToUnlockSlideCompletionPercentage(id self, SEL _cmd) {
    // Experiment With Values:  (Stock=pass-through)
    return 0.15;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBLockScreenSettings = objc_getClass("SBLockScreenSettings");
    MSHookMessageEx(_ftt_class_SBLockScreenSettings, @selector(lockToUnlockSlideCompletionPercentage), (IMP)_patched_ftt_meth_$SBLockScreenSettings$lockToUnlockSlideCompletionPercentage, NULL);
}
