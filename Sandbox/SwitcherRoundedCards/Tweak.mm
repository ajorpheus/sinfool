#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$SBDeckSwitcherItemContainer$setContentCornerRadiusProgress$)(id, SEL, double);
static void _patched_ftt_meth_$SBDeckSwitcherItemContainer$setContentCornerRadiusProgress$(id self, SEL _cmd, double arg1) {
    // Corner Radius: (Higher # = More Round) 0=Square
    arg1 = 5;
    _orig_ftt_meth_$SBDeckSwitcherItemContainer$setContentCornerRadiusProgress$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$SBAppSwitcherPageView$setShadowAlpha$)(id, SEL, double);
static void _patched_ftt_meth_$SBAppSwitcherPageView$setShadowAlpha$(id self, SEL _cmd, double arg1) {
    // Removes Card Shadow
    arg1 = 0;
    _orig_ftt_meth_$SBAppSwitcherPageView$setShadowAlpha$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$SBDeckSwitcherItemContainer$setContentBlurRadiusProgress$)(id, SEL, double);
static void _patched_ftt_meth_$SBDeckSwitcherItemContainer$setContentBlurRadiusProgress$(id self, SEL _cmd, double arg1) {
    // Removes Scrolling Blur
    arg1 = 0;
    _orig_ftt_meth_$SBDeckSwitcherItemContainer$setContentBlurRadiusProgress$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBDeckSwitcherItemContainer = objc_getClass("SBDeckSwitcherItemContainer");
    MSHookMessageEx(_ftt_class_SBDeckSwitcherItemContainer, @selector(setContentCornerRadiusProgress:), (IMP)_patched_ftt_meth_$SBDeckSwitcherItemContainer$setContentCornerRadiusProgress$, (IMP *)_orig_ftt_meth_$SBDeckSwitcherItemContainer$setContentCornerRadiusProgress$);
    Class _ftt_class_SBAppSwitcherPageView = objc_getClass("SBAppSwitcherPageView");
    MSHookMessageEx(_ftt_class_SBAppSwitcherPageView, @selector(setShadowAlpha:), (IMP)_patched_ftt_meth_$SBAppSwitcherPageView$setShadowAlpha$, (IMP *)_orig_ftt_meth_$SBAppSwitcherPageView$setShadowAlpha$);
    MSHookMessageEx(_ftt_class_SBDeckSwitcherItemContainer, @selector(setContentBlurRadiusProgress:), (IMP)_patched_ftt_meth_$SBDeckSwitcherItemContainer$setContentBlurRadiusProgress$, (IMP *)_orig_ftt_meth_$SBDeckSwitcherItemContainer$setContentBlurRadiusProgress$);
}
