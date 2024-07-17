#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$UIViewController$prefersStatusBarHidden(id self, SEL _cmd) {
    return 1;
}

static bool _patched_ftt_meth_$UIApplication$_isStatusBarHiddenForOrientation$(id self, SEL _cmd, long long arg1) {
    return 1;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_UIViewController = objc_getClass("UIViewController");
    MSHookMessageEx(_ftt_class_UIViewController, @selector(prefersStatusBarHidden), (IMP)_patched_ftt_meth_$UIViewController$prefersStatusBarHidden, NULL);
    Class _ftt_class_UIApplication = objc_getClass("UIApplication");
    MSHookMessageEx(_ftt_class_UIApplication, @selector(_isStatusBarHiddenForOrientation:), (IMP)_patched_ftt_meth_$UIApplication$_isStatusBarHiddenForOrientation$, NULL);
}
