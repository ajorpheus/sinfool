#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$SBLockScreenBounceAnimator$gestureRecognizer$shouldReceiveTouch$(id self, SEL _cmd, id arg1, id arg2) {
    return 0;
}

static bool _patched_ftt_meth_$SBLockScreenHintManager$_isBounceEnabledForController$locationInWindow$(id self, SEL _cmd, id arg1, CGPoint arg2) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBLockScreenBounceAnimator = objc_getClass("SBLockScreenBounceAnimator");
    MSHookMessageEx(_ftt_class_SBLockScreenBounceAnimator, @selector(gestureRecognizer:shouldReceiveTouch:), (IMP)_patched_ftt_meth_$SBLockScreenBounceAnimator$gestureRecognizer$shouldReceiveTouch$, NULL);
    Class _ftt_class_SBLockScreenHintManager = objc_getClass("SBLockScreenHintManager");
    MSHookMessageEx(_ftt_class_SBLockScreenHintManager, @selector(_isBounceEnabledForController:locationInWindow:), (IMP)_patched_ftt_meth_$SBLockScreenHintManager$_isBounceEnabledForController$locationInWindow$, NULL);
}
