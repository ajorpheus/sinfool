#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$UIWindow$_disableAutomaticKeyboardUI(id self, SEL _cmd) {
    // •
    return 1;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_UIWindow = objc_getClass("UIWindow");
    MSHookMessageEx(_ftt_class_UIWindow, @selector(_disableAutomaticKeyboardUI), (IMP)_patched_ftt_meth_$UIWindow$_disableAutomaticKeyboardUI, NULL);
}
