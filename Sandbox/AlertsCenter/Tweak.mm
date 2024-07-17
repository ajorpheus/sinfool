#import <UIKit/UIKit.h>

#include <substrate.h>

static int _patched_ftt_meth_$UIAlertController$preferredStyle(id self, SEL _cmd) {
    return 1;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_UIAlertController = objc_getClass("UIAlertController");
    MSHookMessageEx(_ftt_class_UIAlertController, @selector(preferredStyle), (IMP)_patched_ftt_meth_$UIAlertController$preferredStyle, NULL);
}
