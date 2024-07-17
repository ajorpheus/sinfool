#import <UIKit/UIKit.h>

#include <substrate.h>

static BOOL _patched_ftt_meth_$UIAlertControllerVisualStyle$hideActionSeparators(id self, SEL _cmd) {
    return 1;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_UIAlertControllerVisualStyle = objc_getClass("UIAlertControllerVisualStyle");
    MSHookMessageEx(_ftt_class_UIAlertControllerVisualStyle, @selector(hideActionSeparators), (IMP)_patched_ftt_meth_$UIAlertControllerVisualStyle$hideActionSeparators, NULL);
}
