#import <UIKit/UIKit.h>

#include <substrate.h>

static double (*_orig_ftt_meth_$UIStatusBarNewUIDoubleHeightStyleAttributes$heightForMetrics$)(id, SEL, long long);
static double _patched_ftt_meth_$UIStatusBarNewUIDoubleHeightStyleAttributes$heightForMetrics$(id self, SEL _cmd, long long arg1) {
    // •
    arg1 = 0;
    return _orig_ftt_meth_$UIStatusBarNewUIDoubleHeightStyleAttributes$heightForMetrics$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_UIStatusBarNewUIDoubleHeightStyleAttributes = objc_getClass("UIStatusBarNewUIDoubleHeightStyleAttributes");
    MSHookMessageEx(_ftt_class_UIStatusBarNewUIDoubleHeightStyleAttributes, @selector(heightForMetrics:), (IMP)_patched_ftt_meth_$UIStatusBarNewUIDoubleHeightStyleAttributes$heightForMetrics$, (IMP *)_orig_ftt_meth_$UIStatusBarNewUIDoubleHeightStyleAttributes$heightForMetrics$);
}
