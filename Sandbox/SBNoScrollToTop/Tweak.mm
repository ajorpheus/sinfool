#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$UIScrollView$setScrollsToTop$)(id, SEL, bool);
static void _patched_ftt_meth_$UIScrollView$setScrollsToTop$(id self, SEL _cmd, bool arg1) {
    // •
    arg1 = 0;
    _orig_ftt_meth_$UIScrollView$setScrollsToTop$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_UIScrollView = objc_getClass("UIScrollView");
    MSHookMessageEx(_ftt_class_UIScrollView, @selector(setScrollsToTop:), (IMP)_patched_ftt_meth_$UIScrollView$setScrollsToTop$, (IMP *)_orig_ftt_meth_$UIScrollView$setScrollsToTop$);
}
