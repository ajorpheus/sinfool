#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$SBLockScreenScrollView$gestureRecognizer$shouldReceiveTouch$(id self, SEL _cmd, id arg1, id arg2) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBLockScreenScrollView = objc_getClass("SBLockScreenScrollView");
    MSHookMessageEx(_ftt_class_SBLockScreenScrollView, @selector(gestureRecognizer:shouldReceiveTouch:), (IMP)_patched_ftt_meth_$SBLockScreenScrollView$gestureRecognizer$shouldReceiveTouch$, NULL);
}
