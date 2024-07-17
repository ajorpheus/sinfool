#import <UIKit/UIKit.h>

#include <substrate.h>

static float _patched_ftt_meth_$UIAlertControllerVisualStyleAlert$backgroundCornerRadius(id self, SEL _cmd) {
    // Notifications
    return 0;
}

static float _patched_ftt_meth_$UIAlertControllerVisualStyleActionSheet$backgroundCornerRadius(id self, SEL _cmd) {
    // Action Sheets
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_UIAlertControllerVisualStyleAlert = objc_getClass("UIAlertControllerVisualStyleAlert");
    MSHookMessageEx(_ftt_class_UIAlertControllerVisualStyleAlert, @selector(backgroundCornerRadius), (IMP)_patched_ftt_meth_$UIAlertControllerVisualStyleAlert$backgroundCornerRadius, NULL);
    Class _ftt_class_UIAlertControllerVisualStyleActionSheet = objc_getClass("UIAlertControllerVisualStyleActionSheet");
    MSHookMessageEx(_ftt_class_UIAlertControllerVisualStyleActionSheet, @selector(backgroundCornerRadius), (IMP)_patched_ftt_meth_$UIAlertControllerVisualStyleActionSheet$backgroundCornerRadius, NULL);
}
