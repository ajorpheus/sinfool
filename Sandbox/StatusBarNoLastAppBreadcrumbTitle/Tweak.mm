#import <UIKit/UIKit.h>

#include <substrate.h>

static id (*_orig_ftt_meth_$UIStatusBarBreadcrumbItemView$shortenedTitleWithCompressionLevel$)(id, SEL, int);
static id _patched_ftt_meth_$UIStatusBarBreadcrumbItemView$shortenedTitleWithCompressionLevel$(id self, SEL _cmd, int arg1) {
    arg1 = 1;
    return _orig_ftt_meth_$UIStatusBarBreadcrumbItemView$shortenedTitleWithCompressionLevel$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_UIStatusBarBreadcrumbItemView = objc_getClass("UIStatusBarBreadcrumbItemView");
    MSHookMessageEx(_ftt_class_UIStatusBarBreadcrumbItemView, @selector(shortenedTitleWithCompressionLevel:), (IMP)_patched_ftt_meth_$UIStatusBarBreadcrumbItemView$shortenedTitleWithCompressionLevel$, (IMP *)_orig_ftt_meth_$UIStatusBarBreadcrumbItemView$shortenedTitleWithCompressionLevel$);
}
