#import <UIKit/UIKit.h>

#include <substrate.h>

static id (*_orig_ftt_meth_$NCMaterialView$initWithStyleOptions$materialSettings$captureOnly$)(id, SEL, unsigned long long, id, bool);
static id _patched_ftt_meth_$NCMaterialView$initWithStyleOptions$materialSettings$captureOnly$(id self, SEL _cmd, unsigned long long arg1, id arg2, bool arg3) {
    arg1 = 8;
    return _orig_ftt_meth_$NCMaterialView$initWithStyleOptions$materialSettings$captureOnly$(self, _cmd, arg1, arg2, arg3);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_NCMaterialView = objc_getClass("NCMaterialView");
    MSHookMessageEx(_ftt_class_NCMaterialView, @selector(initWithStyleOptions:materialSettings:captureOnly:), (IMP)_patched_ftt_meth_$NCMaterialView$initWithStyleOptions$materialSettings$captureOnly$, (IMP *)_orig_ftt_meth_$NCMaterialView$initWithStyleOptions$materialSettings$captureOnly$);
}
