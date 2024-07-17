#import <UIKit/UIKit.h>

#include <substrate.h>

static id (*_orig_ftt_meth_$NCMaterialView$initWithStyleOptions$materialSettings$captureOnly$)(id, SEL, unsigned long long, id, bool);
static id _patched_ftt_meth_$NCMaterialView$initWithStyleOptions$materialSettings$captureOnly$(id self, SEL _cmd, unsigned long long arg1, id arg2, bool arg3) {
    // BG Style: 0=Transparent, 1=Semi-Transparent (on LS), 2-7=Different Looks
    arg1 = 3;
    return _orig_ftt_meth_$NCMaterialView$initWithStyleOptions$materialSettings$captureOnly$(self, _cmd, arg1, arg2, arg3);
}

static void (*_orig_ftt_meth_$NCMaterialSettings$setWhiteAlpha$)(id, SEL, double);
static void _patched_ftt_meth_$NCMaterialSettings$setWhiteAlpha$(id self, SEL _cmd, double arg1) {
    // White Alpha: 0.0-1.0 (or delete this unit)
    arg1 = 0.6;
    _orig_ftt_meth_$NCMaterialSettings$setWhiteAlpha$(self, _cmd, arg1);
}

static bool _patched_ftt_meth_$NCShortLookView$isHeaderHidden(id self, SEL _cmd) {
    return 1;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_NCMaterialView = objc_getClass("NCMaterialView");
    MSHookMessageEx(_ftt_class_NCMaterialView, @selector(initWithStyleOptions:materialSettings:captureOnly:), (IMP)_patched_ftt_meth_$NCMaterialView$initWithStyleOptions$materialSettings$captureOnly$, (IMP *)_orig_ftt_meth_$NCMaterialView$initWithStyleOptions$materialSettings$captureOnly$);
    Class _ftt_class_NCMaterialSettings = objc_getClass("NCMaterialSettings");
    MSHookMessageEx(_ftt_class_NCMaterialSettings, @selector(setWhiteAlpha:), (IMP)_patched_ftt_meth_$NCMaterialSettings$setWhiteAlpha$, (IMP *)_orig_ftt_meth_$NCMaterialSettings$setWhiteAlpha$);
    Class _ftt_class_NCShortLookView = objc_getClass("NCShortLookView");
    MSHookMessageEx(_ftt_class_NCShortLookView, @selector(isHeaderHidden), (IMP)_patched_ftt_meth_$NCShortLookView$isHeaderHidden, NULL);
}
