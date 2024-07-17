#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$NCMaterialView$_setContinuousCornerRadius$)(id, SEL, double);
static void _patched_ftt_meth_$NCMaterialView$_setContinuousCornerRadius$(id self, SEL _cmd, double arg1) {
    // Set Radius...
    arg1 = 0;
    _orig_ftt_meth_$NCMaterialView$_setContinuousCornerRadius$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_NCMaterialView = objc_getClass("NCMaterialView");
    MSHookMessageEx(_ftt_class_NCMaterialView, @selector(_setContinuousCornerRadius:), (IMP)_patched_ftt_meth_$NCMaterialView$_setContinuousCornerRadius$, (IMP *)_orig_ftt_meth_$NCMaterialView$_setContinuousCornerRadius$);
}
