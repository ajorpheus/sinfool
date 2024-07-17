#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$_UIActivityGroupViewFlowLayout$setEvaluatedHorizontalItemOffset$)(id, SEL, double);
static void _patched_ftt_meth_$_UIActivityGroupViewFlowLayout$setEvaluatedHorizontalItemOffset$(id self, SEL _cmd, double arg1) {
    // Reduces Spacing Between Icons: (lower # = closer together)
    arg1 = -5;
    _orig_ftt_meth_$_UIActivityGroupViewFlowLayout$setEvaluatedHorizontalItemOffset$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class__UIActivityGroupViewFlowLayout = objc_getClass("_UIActivityGroupViewFlowLayout");
    MSHookMessageEx(_ftt_class__UIActivityGroupViewFlowLayout, @selector(setEvaluatedHorizontalItemOffset:), (IMP)_patched_ftt_meth_$_UIActivityGroupViewFlowLayout$setEvaluatedHorizontalItemOffset$, (IMP *)_orig_ftt_meth_$_UIActivityGroupViewFlowLayout$setEvaluatedHorizontalItemOffset$);
}
