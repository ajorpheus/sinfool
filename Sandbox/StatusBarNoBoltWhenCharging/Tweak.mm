#import <UIKit/UIKit.h>

#include <substrate.h>

static id _patched_ftt_meth_$UIStatusBarBatteryItemView$_accessoryImage(id self, SEL _cmd) {
    return NULL;
}

static double _patched_ftt_meth_$UIStatusBarForegroundStyleAttributes$batteryAccessoryMargin(id self, SEL _cmd) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_UIStatusBarBatteryItemView = objc_getClass("UIStatusBarBatteryItemView");
    MSHookMessageEx(_ftt_class_UIStatusBarBatteryItemView, @selector(_accessoryImage), (IMP)_patched_ftt_meth_$UIStatusBarBatteryItemView$_accessoryImage, NULL);
    Class _ftt_class_UIStatusBarForegroundStyleAttributes = objc_getClass("UIStatusBarForegroundStyleAttributes");
    MSHookMessageEx(_ftt_class_UIStatusBarForegroundStyleAttributes, @selector(batteryAccessoryMargin), (IMP)_patched_ftt_meth_$UIStatusBarForegroundStyleAttributes$batteryAccessoryMargin, NULL);
}
