#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$UIStatusBarForegroundStyleAttributes$setCanShowBreadcrumbs$)(id, SEL, bool);
static void _patched_ftt_meth_$UIStatusBarForegroundStyleAttributes$setCanShowBreadcrumbs$(id self, SEL _cmd, bool arg1) {
    arg1 = 0;
    _orig_ftt_meth_$UIStatusBarForegroundStyleAttributes$setCanShowBreadcrumbs$(self, _cmd, arg1);
}

static bool _patched_ftt_meth_$UIStatusBarForegroundStyleAttributes$canShowBreadcrumbs(id self, SEL _cmd) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_UIStatusBarForegroundStyleAttributes = objc_getClass("UIStatusBarForegroundStyleAttributes");
    MSHookMessageEx(_ftt_class_UIStatusBarForegroundStyleAttributes, @selector(setCanShowBreadcrumbs:), (IMP)_patched_ftt_meth_$UIStatusBarForegroundStyleAttributes$setCanShowBreadcrumbs$, (IMP *)_orig_ftt_meth_$UIStatusBarForegroundStyleAttributes$setCanShowBreadcrumbs$);
    MSHookMessageEx(_ftt_class_UIStatusBarForegroundStyleAttributes, @selector(canShowBreadcrumbs), (IMP)_patched_ftt_meth_$UIStatusBarForegroundStyleAttributes$canShowBreadcrumbs, NULL);
}
