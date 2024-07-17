#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$IGViewController$prefersStatusBarHidden(id self, SEL _cmd) {
    return 1;
}

static bool _patched_ftt_meth_$IGNavigationBar$maintainBarHeightWhenStatusBarHidden(id self, SEL _cmd) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_IGViewController = objc_getClass("IGViewController");
    MSHookMessageEx(_ftt_class_IGViewController, @selector(prefersStatusBarHidden), (IMP)_patched_ftt_meth_$IGViewController$prefersStatusBarHidden, NULL);
    Class _ftt_class_IGNavigationBar = objc_getClass("IGNavigationBar");
    MSHookMessageEx(_ftt_class_IGNavigationBar, @selector(maintainBarHeightWhenStatusBarHidden), (IMP)_patched_ftt_meth_$IGNavigationBar$maintainBarHeightWhenStatusBarHidden, NULL);
}
