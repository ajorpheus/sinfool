#import <UIKit/UIKit.h>

#include <substrate.h>

static BOOL _patched_ftt_meth_$UIStatusBarForegroundStyleAttributes$canShowBreadcrumbs(id self, SEL _cmd) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_UIStatusBarForegroundStyleAttributes = objc_getClass("UIStatusBarForegroundStyleAttributes");
    MSHookMessageEx(_ftt_class_UIStatusBarForegroundStyleAttributes, @selector(canShowBreadcrumbs), (IMP)_patched_ftt_meth_$UIStatusBarForegroundStyleAttributes$canShowBreadcrumbs, NULL);
}
