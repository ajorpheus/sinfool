#import <UIKit/UIKit.h>

#include <substrate.h>

static void _patched_ftt_meth_$SBFLockScreenDateSubtitleDateView$setDate$(id self, SEL _cmd, id arg1) {
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBFLockScreenDateSubtitleDateView = objc_getClass("SBFLockScreenDateSubtitleDateView");
    MSHookMessageEx(_ftt_class_SBFLockScreenDateSubtitleDateView, @selector(setDate:), (IMP)_patched_ftt_meth_$SBFLockScreenDateSubtitleDateView$setDate$, NULL);
}
