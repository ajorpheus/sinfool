#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$_SFNavigationBarURLButton$setBackgroundAlphaFactor$)(id, SEL, double);
static void _patched_ftt_meth_$_SFNavigationBarURLButton$setBackgroundAlphaFactor$(id self, SEL _cmd, double arg1) {
    // Flat URL
    arg1 = 0;
    _orig_ftt_meth_$_SFNavigationBarURLButton$setBackgroundAlphaFactor$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$_SFFluidProgressView$setCornerRadius$)(id, SEL, double);
static void _patched_ftt_meth_$_SFFluidProgressView$setCornerRadius$(id self, SEL _cmd, double arg1) {
    // Pixelated Progress Bar (in landscape)
    arg1 = 0.0001;
    _orig_ftt_meth_$_SFFluidProgressView$setCornerRadius$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$_SFFluidProgressView$setProgressBarFillColor$)(id, SEL, id);
static void _patched_ftt_meth_$_SFFluidProgressView$setProgressBarFillColor$(id self, SEL _cmd, id arg1) {
    // Progress Bar Color
    arg1 = [UIColor colorWithRed:0/255.0 green:122/255.0 blue:255/255.0 alpha:255/255.0];
    _orig_ftt_meth_$_SFFluidProgressView$setProgressBarFillColor$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class__SFNavigationBarURLButton = objc_getClass("_SFNavigationBarURLButton");
    MSHookMessageEx(_ftt_class__SFNavigationBarURLButton, @selector(setBackgroundAlphaFactor:), (IMP)_patched_ftt_meth_$_SFNavigationBarURLButton$setBackgroundAlphaFactor$, (IMP *)_orig_ftt_meth_$_SFNavigationBarURLButton$setBackgroundAlphaFactor$);
    Class _ftt_class__SFFluidProgressView = objc_getClass("_SFFluidProgressView");
    MSHookMessageEx(_ftt_class__SFFluidProgressView, @selector(setCornerRadius:), (IMP)_patched_ftt_meth_$_SFFluidProgressView$setCornerRadius$, (IMP *)_orig_ftt_meth_$_SFFluidProgressView$setCornerRadius$);
    MSHookMessageEx(_ftt_class__SFFluidProgressView, @selector(setProgressBarFillColor:), (IMP)_patched_ftt_meth_$_SFFluidProgressView$setProgressBarFillColor$, (IMP *)_orig_ftt_meth_$_SFFluidProgressView$setProgressBarFillColor$);
}
