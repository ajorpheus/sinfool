#import <UIKit/UIKit.h>

#include <substrate.h>

static BOOL _patched_ftt_meth_$UIStatusBarBatteryItemView$_needsAccessoryImage(id self, SEL _cmd) {
    // •
    return 1;
}

static id _patched_ftt_meth_$UIStatusBarBatteryItemView$_accessoryImage(id self, SEL _cmd) {
    // •
    return NULL;
}

static float _patched_ftt_meth_$UIStatusBarBatteryItemView$extraRightPadding(id self, SEL _cmd) {
    // •
    return -4;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_UIStatusBarBatteryItemView = objc_getClass("UIStatusBarBatteryItemView");
    MSHookMessageEx(_ftt_class_UIStatusBarBatteryItemView, @selector(_needsAccessoryImage), (IMP)_patched_ftt_meth_$UIStatusBarBatteryItemView$_needsAccessoryImage, NULL);
    MSHookMessageEx(_ftt_class_UIStatusBarBatteryItemView, @selector(_accessoryImage), (IMP)_patched_ftt_meth_$UIStatusBarBatteryItemView$_accessoryImage, NULL);
    MSHookMessageEx(_ftt_class_UIStatusBarBatteryItemView, @selector(extraRightPadding), (IMP)_patched_ftt_meth_$UIStatusBarBatteryItemView$extraRightPadding, NULL);
}