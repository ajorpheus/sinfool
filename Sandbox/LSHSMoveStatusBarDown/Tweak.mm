#import <UIKit/UIKit.h>

#include <substrate.h>

static long long _patched_ftt_meth_$SBLockScreenViewController$statusBarStyle(id self, SEL _cmd) {
    // LS SB:  -1=none 1=springboard size
    return 1;
}

static id (*_orig_ftt_meth_$UIStatusBarForegroundStyleAttributes$initWithHeight$legibilityStyle$tintColor$hasBusyBackground$idiom$)(id, SEL, double, long long, id, bool, long long);
static id _patched_ftt_meth_$UIStatusBarForegroundStyleAttributes$initWithHeight$legibilityStyle$tintColor$hasBusyBackground$idiom$(id self, SEL _cmd, double arg1, long long arg2, id arg3, bool arg4, long long arg5) {
    // (Argument #1) HEIGHT:  4S=942, iP5=1120, iP6+=1452  (Argument #3) COLOR:  optional
    arg1 = 1120;
    return _orig_ftt_meth_$UIStatusBarForegroundStyleAttributes$initWithHeight$legibilityStyle$tintColor$hasBusyBackground$idiom$(self, _cmd, arg1, arg2, arg3, arg4, arg5);
}

static bool _patched_ftt_meth_$UIView$_canHandleStatusBarTouchAtLocation$(id self, SEL _cmd, CGPoint arg1) {
    // Disables Status Bar Touch
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBLockScreenViewController = objc_getClass("SBLockScreenViewController");
    MSHookMessageEx(_ftt_class_SBLockScreenViewController, @selector(statusBarStyle), (IMP)_patched_ftt_meth_$SBLockScreenViewController$statusBarStyle, NULL);
    Class _ftt_class_UIStatusBarForegroundStyleAttributes = objc_getClass("UIStatusBarForegroundStyleAttributes");
    MSHookMessageEx(_ftt_class_UIStatusBarForegroundStyleAttributes, @selector(initWithHeight:legibilityStyle:tintColor:hasBusyBackground:idiom:), (IMP)_patched_ftt_meth_$UIStatusBarForegroundStyleAttributes$initWithHeight$legibilityStyle$tintColor$hasBusyBackground$idiom$, (IMP *)_orig_ftt_meth_$UIStatusBarForegroundStyleAttributes$initWithHeight$legibilityStyle$tintColor$hasBusyBackground$idiom$);
    Class _ftt_class_UIView = objc_getClass("UIView");
    MSHookMessageEx(_ftt_class_UIView, @selector(_canHandleStatusBarTouchAtLocation:), (IMP)_patched_ftt_meth_$UIView$_canHandleStatusBarTouchAtLocation$, NULL);
}
