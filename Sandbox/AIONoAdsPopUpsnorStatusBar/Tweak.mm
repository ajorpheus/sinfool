#import <UIKit/UIKit.h>

#include <substrate.h>

static BOOL _patched_ftt_meth_$UIViewController$prefersStatusBarHidden(id self, SEL _cmd) {
    return 1;
}

static id _patched_ftt_meth_$MAdsView$getAdView(id self, SEL _cmd) {
    return NULL;
}

static id _patched_ftt_meth_$ADCAd$init$(id self, SEL _cmd, id arg1) {
    return NULL;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_UIViewController = objc_getClass("UIViewController");
    MSHookMessageEx(_ftt_class_UIViewController, @selector(prefersStatusBarHidden), (IMP)_patched_ftt_meth_$UIViewController$prefersStatusBarHidden, NULL);
    Class _ftt_class_MAdsView = objc_getClass("MAdsView");
    MSHookMessageEx(_ftt_class_MAdsView, @selector(getAdView), (IMP)_patched_ftt_meth_$MAdsView$getAdView, NULL);
    Class _ftt_class_ADCAd = objc_getClass("ADCAd");
    MSHookMessageEx(_ftt_class_ADCAd, @selector(init:), (IMP)_patched_ftt_meth_$ADCAd$init$, NULL);
}
