#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$SBSlideUpAppGrabberView$_shouldUseVibrancy(id self, SEL _cmd) {
    // If above set to "FALSE" then...  (CHANGE THIS UNIT TO "pass-through")
    return 0;
}

static bool _patched_ftt_meth_$SBLockScreenScrollView$gestureRecognizer$shouldReceiveTouch$(id self, SEL _cmd, id arg1, id arg2) {
    return 0;
}

static bool _patched_ftt_meth_$SBLockScreenBounceAnimator$gestureRecognizer$shouldReceiveTouch$(id self, SEL _cmd, id arg1, id arg2) {
    return 0;
}

static bool _patched_ftt_meth_$SBLockScreenHintManager$_isBounceEnabledForController$locationInWindow$(id self, SEL _cmd, id arg1, CGPoint arg2) {
    return 0;
}

static void (*_orig_ftt_meth_$SBLockScreenView$setTopGrabberHidden$forRequester$)(id, SEL, bool, id);
static void _patched_ftt_meth_$SBLockScreenView$setTopGrabberHidden$forRequester$(id self, SEL _cmd, bool arg1, id arg2) {
    arg1 = 1;
    _orig_ftt_meth_$SBLockScreenView$setTopGrabberHidden$forRequester$(self, _cmd, arg1, arg2);
}

static void (*_orig_ftt_meth_$SBLockScreenView$setBottomGrabberHidden$forRequester$)(id, SEL, bool, id);
static void _patched_ftt_meth_$SBLockScreenView$setBottomGrabberHidden$forRequester$(id self, SEL _cmd, bool arg1, id arg2) {
    arg1 = 1;
    _orig_ftt_meth_$SBLockScreenView$setBottomGrabberHidden$forRequester$(self, _cmd, arg1, arg2);
}

static id _patched_ftt_meth_$_UIGlintyStringView$chevron(id self, SEL _cmd) {
    return NULL;
}

static void (*_orig_ftt_meth_$SBLockScreenView$setCustomSlideToUnlockText$)(id, SEL, id);
static void _patched_ftt_meth_$SBLockScreenView$setCustomSlideToUnlockText$(id self, SEL _cmd, id arg1) {
    arg1 = @"Press home to unlock";
    _orig_ftt_meth_$SBLockScreenView$setCustomSlideToUnlockText$(self, _cmd, arg1);
}

static bool _patched_ftt_meth_$SBLockScreenViewController$shouldShowSlideToUnlockTextImmediately(id self, SEL _cmd) {
    return 1;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBSlideUpAppGrabberView = objc_getClass("SBSlideUpAppGrabberView");
    MSHookMessageEx(_ftt_class_SBSlideUpAppGrabberView, @selector(_shouldUseVibrancy), (IMP)_patched_ftt_meth_$SBSlideUpAppGrabberView$_shouldUseVibrancy, NULL);
    Class _ftt_class_SBLockScreenScrollView = objc_getClass("SBLockScreenScrollView");
    MSHookMessageEx(_ftt_class_SBLockScreenScrollView, @selector(gestureRecognizer:shouldReceiveTouch:), (IMP)_patched_ftt_meth_$SBLockScreenScrollView$gestureRecognizer$shouldReceiveTouch$, NULL);
    Class _ftt_class_SBLockScreenBounceAnimator = objc_getClass("SBLockScreenBounceAnimator");
    MSHookMessageEx(_ftt_class_SBLockScreenBounceAnimator, @selector(gestureRecognizer:shouldReceiveTouch:), (IMP)_patched_ftt_meth_$SBLockScreenBounceAnimator$gestureRecognizer$shouldReceiveTouch$, NULL);
    Class _ftt_class_SBLockScreenHintManager = objc_getClass("SBLockScreenHintManager");
    MSHookMessageEx(_ftt_class_SBLockScreenHintManager, @selector(_isBounceEnabledForController:locationInWindow:), (IMP)_patched_ftt_meth_$SBLockScreenHintManager$_isBounceEnabledForController$locationInWindow$, NULL);
    Class _ftt_class_SBLockScreenView = objc_getClass("SBLockScreenView");
    MSHookMessageEx(_ftt_class_SBLockScreenView, @selector(setTopGrabberHidden:forRequester:), (IMP)_patched_ftt_meth_$SBLockScreenView$setTopGrabberHidden$forRequester$, (IMP *)_orig_ftt_meth_$SBLockScreenView$setTopGrabberHidden$forRequester$);
    MSHookMessageEx(_ftt_class_SBLockScreenView, @selector(setBottomGrabberHidden:forRequester:), (IMP)_patched_ftt_meth_$SBLockScreenView$setBottomGrabberHidden$forRequester$, (IMP *)_orig_ftt_meth_$SBLockScreenView$setBottomGrabberHidden$forRequester$);
    Class _ftt_class__UIGlintyStringView = objc_getClass("_UIGlintyStringView");
    MSHookMessageEx(_ftt_class__UIGlintyStringView, @selector(chevron), (IMP)_patched_ftt_meth_$_UIGlintyStringView$chevron, NULL);
    MSHookMessageEx(_ftt_class_SBLockScreenView, @selector(setCustomSlideToUnlockText:), (IMP)_patched_ftt_meth_$SBLockScreenView$setCustomSlideToUnlockText$, (IMP *)_orig_ftt_meth_$SBLockScreenView$setCustomSlideToUnlockText$);
    Class _ftt_class_SBLockScreenViewController = objc_getClass("SBLockScreenViewController");
    MSHookMessageEx(_ftt_class_SBLockScreenViewController, @selector(shouldShowSlideToUnlockTextImmediately), (IMP)_patched_ftt_meth_$SBLockScreenViewController$shouldShowSlideToUnlockTextImmediately, NULL);
}
