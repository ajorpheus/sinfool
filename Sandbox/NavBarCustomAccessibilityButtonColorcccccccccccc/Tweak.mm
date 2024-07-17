#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$UINavigationItemButtonView$_setAccessibilityBackgroundTintColor$)(id, SEL, id);
static void _patched_ftt_meth_$UINavigationItemButtonView$_setAccessibilityBackgroundTintColor$(id self, SEL _cmd, id arg1) {
    // Set Color... (Back)
    arg1 = [UIColor colorWithRed:207/255.0 green:226/255.0 blue:245/255.0 alpha:255/255.0];
    _orig_ftt_meth_$UINavigationItemButtonView$_setAccessibilityBackgroundTintColor$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$UINavigationButton$_setAccessibilityBackgroundTintColor$)(id, SEL, id);
static void _patched_ftt_meth_$UINavigationButton$_setAccessibilityBackgroundTintColor$(id self, SEL _cmd, id arg1) {
    // Set Color... (Standard)
    arg1 = [UIColor colorWithRed:207/255.0 green:226/255.0 blue:245/255.0 alpha:255/255.0];
    _orig_ftt_meth_$UINavigationButton$_setAccessibilityBackgroundTintColor$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_UINavigationItemButtonView = objc_getClass("UINavigationItemButtonView");
    MSHookMessageEx(_ftt_class_UINavigationItemButtonView, @selector(_setAccessibilityBackgroundTintColor:), (IMP)_patched_ftt_meth_$UINavigationItemButtonView$_setAccessibilityBackgroundTintColor$, (IMP *)_orig_ftt_meth_$UINavigationItemButtonView$_setAccessibilityBackgroundTintColor$);
    Class _ftt_class_UINavigationButton = objc_getClass("UINavigationButton");
    MSHookMessageEx(_ftt_class_UINavigationButton, @selector(_setAccessibilityBackgroundTintColor:), (IMP)_patched_ftt_meth_$UINavigationButton$_setAccessibilityBackgroundTintColor$, (IMP *)_orig_ftt_meth_$UINavigationButton$_setAccessibilityBackgroundTintColor$);
}
