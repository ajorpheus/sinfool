#import <UIKit/UIKit.h>

#include <substrate.h>

static id _patched_ftt_meth_$UIAlertView$initWithFrame$(id self, SEL _cmd, CGRect arg1) {
    return NULL;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_UIAlertView = objc_getClass("UIAlertView");
    MSHookMessageEx(_ftt_class_UIAlertView, @selector(initWithFrame:), (IMP)_patched_ftt_meth_$UIAlertView$initWithFrame$, NULL);
}
