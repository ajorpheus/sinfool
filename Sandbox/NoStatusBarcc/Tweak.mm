#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$UIViewController$prefersStatusBarHidden(id self, SEL _cmd) {
    return 1;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_UIViewController = objc_getClass("UIViewController");
    MSHookMessageEx(_ftt_class_UIViewController, @selector(prefersStatusBarHidden), (IMP)_patched_ftt_meth_$UIViewController$prefersStatusBarHidden, NULL);
}
