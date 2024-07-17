#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$UIAlertView$setCancelButtonIndex$)(id, SEL, long long);
static void _patched_ftt_meth_$UIAlertView$setCancelButtonIndex$(id self, SEL _cmd, long long arg1) {
    arg1 = 1;
    _orig_ftt_meth_$UIAlertView$setCancelButtonIndex$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_UIAlertView = objc_getClass("UIAlertView");
    MSHookMessageEx(_ftt_class_UIAlertView, @selector(setCancelButtonIndex:), (IMP)_patched_ftt_meth_$UIAlertView$setCancelButtonIndex$, (IMP *)_orig_ftt_meth_$UIAlertView$setCancelButtonIndex$);
}
