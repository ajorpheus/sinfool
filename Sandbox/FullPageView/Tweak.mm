#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$UIViewController$prefersStatusBarHidden(id self, SEL _cmd) {
    return 1;
}

static double _patched_ftt_meth_$BrowserController$_navigationBarDesiredHeight(id self, SEL _cmd) {
    return 0;
}

static bool _patched_ftt_meth_$BrowserController$_shouldUseNarrowLayout(id self, SEL _cmd) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_UIViewController = objc_getClass("UIViewController");
    MSHookMessageEx(_ftt_class_UIViewController, @selector(prefersStatusBarHidden), (IMP)_patched_ftt_meth_$UIViewController$prefersStatusBarHidden, NULL);
    Class _ftt_class_BrowserController = objc_getClass("BrowserController");
    MSHookMessageEx(_ftt_class_BrowserController, @selector(_navigationBarDesiredHeight), (IMP)_patched_ftt_meth_$BrowserController$_navigationBarDesiredHeight, NULL);
    MSHookMessageEx(_ftt_class_BrowserController, @selector(_shouldUseNarrowLayout), (IMP)_patched_ftt_meth_$BrowserController$_shouldUseNarrowLayout, NULL);
}
