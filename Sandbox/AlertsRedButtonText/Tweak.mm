#import <UIKit/UIKit.h>

#include <substrate.h>

static long long _patched_ftt_meth_$UIAlertAction$style(id self, SEL _cmd) {
    // •
    return 2;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_UIAlertAction = objc_getClass("UIAlertAction");
    MSHookMessageEx(_ftt_class_UIAlertAction, @selector(style), (IMP)_patched_ftt_meth_$UIAlertAction$style, NULL);
}
