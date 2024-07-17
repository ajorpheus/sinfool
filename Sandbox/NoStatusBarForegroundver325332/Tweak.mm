#import <UIKit/UIKit.h>

#include <substrate.h>

static id _patched_ftt_meth_$UIStatusBarForegroundStyleAttributes$initWithHeight$legibilityStyle$tintColor$hasBusyBackground$idiom$(id self, SEL _cmd, double arg1, long long arg2, id arg3, bool arg4, long long arg5) {
    // Status Bar Foreground: (Return Value) Hide=(NULL), Show=pass-through
    return NULL;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_UIStatusBarForegroundStyleAttributes = objc_getClass("UIStatusBarForegroundStyleAttributes");
    MSHookMessageEx(_ftt_class_UIStatusBarForegroundStyleAttributes, @selector(initWithHeight:legibilityStyle:tintColor:hasBusyBackground:idiom:), (IMP)_patched_ftt_meth_$UIStatusBarForegroundStyleAttributes$initWithHeight$legibilityStyle$tintColor$hasBusyBackground$idiom$, NULL);
}
