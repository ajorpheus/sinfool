#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$SBLockScreenViewController$shouldShowLockStatusBarTime(id self, SEL _cmd) {
    // Show Time On LS SB
    return 1;
}

static void (*_orig_ftt_meth_$SBLockScreenView$setTopGrabberHidden$forRequester$)(id, SEL, bool, id);
static void _patched_ftt_meth_$SBLockScreenView$setTopGrabberHidden$forRequester$(id self, SEL _cmd, bool arg1, id arg2) {
    // Hide Top Grabber
    arg1 = 1;
    _orig_ftt_meth_$SBLockScreenView$setTopGrabberHidden$forRequester$(self, _cmd, arg1, arg2);
}

static bool _patched_ftt_meth_$SBSlideUpAppGrabberView$_shouldUseVibrancy(id self, SEL _cmd) {
    // Hide Camera Grabber (part#2)
    return 0;
}

static void (*_orig_ftt_meth_$SBLockScreenView$setBottomGrabberHidden$forRequester$)(id, SEL, bool, id);
static void _patched_ftt_meth_$SBLockScreenView$setBottomGrabberHidden$forRequester$(id self, SEL _cmd, bool arg1, id arg2) {
    // Hide Bottom Grabber
    arg1 = 1;
    _orig_ftt_meth_$SBLockScreenView$setBottomGrabberHidden$forRequester$(self, _cmd, arg1, arg2);
}

static long long _patched_ftt_meth_$UIStatusBarNewUIStyleAttributes$legibilityStyle(id self, SEL _cmd) {
    // Hides HS SB
    return 1;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBLockScreenViewController = objc_getClass("SBLockScreenViewController");
    MSHookMessageEx(_ftt_class_SBLockScreenViewController, @selector(shouldShowLockStatusBarTime), (IMP)_patched_ftt_meth_$SBLockScreenViewController$shouldShowLockStatusBarTime, NULL);
    Class _ftt_class_SBLockScreenView = objc_getClass("SBLockScreenView");
    MSHookMessageEx(_ftt_class_SBLockScreenView, @selector(setTopGrabberHidden:forRequester:), (IMP)_patched_ftt_meth_$SBLockScreenView$setTopGrabberHidden$forRequester$, (IMP *)_orig_ftt_meth_$SBLockScreenView$setTopGrabberHidden$forRequester$);
    Class _ftt_class_SBSlideUpAppGrabberView = objc_getClass("SBSlideUpAppGrabberView");
    MSHookMessageEx(_ftt_class_SBSlideUpAppGrabberView, @selector(_shouldUseVibrancy), (IMP)_patched_ftt_meth_$SBSlideUpAppGrabberView$_shouldUseVibrancy, NULL);
    MSHookMessageEx(_ftt_class_SBLockScreenView, @selector(setBottomGrabberHidden:forRequester:), (IMP)_patched_ftt_meth_$SBLockScreenView$setBottomGrabberHidden$forRequester$, (IMP *)_orig_ftt_meth_$SBLockScreenView$setBottomGrabberHidden$forRequester$);
    Class _ftt_class_UIStatusBarNewUIStyleAttributes = objc_getClass("UIStatusBarNewUIStyleAttributes");
    MSHookMessageEx(_ftt_class_UIStatusBarNewUIStyleAttributes, @selector(legibilityStyle), (IMP)_patched_ftt_meth_$UIStatusBarNewUIStyleAttributes$legibilityStyle, NULL);
}
