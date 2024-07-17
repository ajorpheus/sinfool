#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$SBDeckSwitcherItemContainer$setContentPageViewScale$)(id, SEL, double);
static void _patched_ftt_meth_$SBDeckSwitcherItemContainer$setContentPageViewScale$(id self, SEL _cmd, double arg1) {
    // Set Size... (Tiny=1.5, Small=1, Stock=.75, Big=.5 Bigger=.4, Huge=.3)
    arg1 = 0.5;
    _orig_ftt_meth_$SBDeckSwitcherItemContainer$setContentPageViewScale$(self, _cmd, arg1);
}

static id _patched_ftt_meth_$SBDeckSwitcherIconImageContainerView$displayName(id self, SEL _cmd) {
    // Hides Labels: (Show=P)
    return @"";
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBDeckSwitcherItemContainer = objc_getClass("SBDeckSwitcherItemContainer");
    MSHookMessageEx(_ftt_class_SBDeckSwitcherItemContainer, @selector(setContentPageViewScale:), (IMP)_patched_ftt_meth_$SBDeckSwitcherItemContainer$setContentPageViewScale$, (IMP *)_orig_ftt_meth_$SBDeckSwitcherItemContainer$setContentPageViewScale$);
    Class _ftt_class_SBDeckSwitcherIconImageContainerView = objc_getClass("SBDeckSwitcherIconImageContainerView");
    MSHookMessageEx(_ftt_class_SBDeckSwitcherIconImageContainerView, @selector(displayName), (IMP)_patched_ftt_meth_$SBDeckSwitcherIconImageContainerView$displayName, NULL);
}
