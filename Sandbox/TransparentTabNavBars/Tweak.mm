#import <UIKit/UIKit.h>

#include <substrate.h>

static id (*_orig_ftt_meth_$UIStatusBarForegroundStyleAttributes$initWithHeight$legibilityStyle$tintColor$hasBusyBackground$idiom$)(id, SEL, double, long long, id, bool, long long);
static id _patched_ftt_meth_$UIStatusBarForegroundStyleAttributes$initWithHeight$legibilityStyle$tintColor$hasBusyBackground$idiom$(id self, SEL _cmd, double arg1, long long arg2, id arg3, bool arg4, long long arg5) {
    // Set Status Bar Color... (Arg#3)
    arg3 = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:255/255.0];
    return _orig_ftt_meth_$UIStatusBarForegroundStyleAttributes$initWithHeight$legibilityStyle$tintColor$hasBusyBackground$idiom$(self, _cmd, arg1, arg2, arg3, arg4, arg5);
}

static id (*_orig_ftt_meth_$_UIBarBackground$_blurWithStyle$tint$)(id, SEL, long long, id);
static id _patched_ftt_meth_$_UIBarBackground$_blurWithStyle$tint$(id self, SEL _cmd, long long arg1, id arg2) {
    arg1 = -1;
    return _orig_ftt_meth_$_UIBarBackground$_blurWithStyle$tint$(self, _cmd, arg1, arg2);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_UIStatusBarForegroundStyleAttributes = objc_getClass("UIStatusBarForegroundStyleAttributes");
    MSHookMessageEx(_ftt_class_UIStatusBarForegroundStyleAttributes, @selector(initWithHeight:legibilityStyle:tintColor:hasBusyBackground:idiom:), (IMP)_patched_ftt_meth_$UIStatusBarForegroundStyleAttributes$initWithHeight$legibilityStyle$tintColor$hasBusyBackground$idiom$, (IMP *)_orig_ftt_meth_$UIStatusBarForegroundStyleAttributes$initWithHeight$legibilityStyle$tintColor$hasBusyBackground$idiom$);
    Class _ftt_class__UIBarBackground = objc_getClass("_UIBarBackground");
    MSHookMessageEx(_ftt_class__UIBarBackground, @selector(_blurWithStyle:tint:), (IMP)_patched_ftt_meth_$_UIBarBackground$_blurWithStyle$tint$, (IMP *)_orig_ftt_meth_$_UIBarBackground$_blurWithStyle$tint$);
}
