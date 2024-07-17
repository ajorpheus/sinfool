#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$_UIAlertControllerCollectionViewFlowLayout$hideSeparators(id self, SEL _cmd) {
    // •
    return 1;
}

static bool _patched_ftt_meth_$UIAlertControllerVisualStyle$hideActionSeparators(id self, SEL _cmd) {
    // •
    return 1;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class__UIAlertControllerCollectionViewFlowLayout = objc_getClass("_UIAlertControllerCollectionViewFlowLayout");
    MSHookMessageEx(_ftt_class__UIAlertControllerCollectionViewFlowLayout, @selector(hideSeparators), (IMP)_patched_ftt_meth_$_UIAlertControllerCollectionViewFlowLayout$hideSeparators, NULL);
    Class _ftt_class_UIAlertControllerVisualStyle = objc_getClass("UIAlertControllerVisualStyle");
    MSHookMessageEx(_ftt_class_UIAlertControllerVisualStyle, @selector(hideActionSeparators), (IMP)_patched_ftt_meth_$UIAlertControllerVisualStyle$hideActionSeparators, NULL);
}
