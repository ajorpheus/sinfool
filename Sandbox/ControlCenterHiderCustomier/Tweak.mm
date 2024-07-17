#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$SBControlCenterContentContainerView$setContentHeight$)(id, SEL, double);
static void _patched_ftt_meth_$SBControlCenterContentContainerView$setContentHeight$(id self, SEL _cmd, double arg1) {
    // ⚠️Height: {(stock ios approx) iP5/S:436, iP6+:429, iPad:184, stock:delete this unit}
    arg1 = 429;
    _orig_ftt_meth_$SBControlCenterContentContainerView$setContentHeight$(self, _cmd, arg1);
}

static bool _patched_ftt_meth_$SBUIController$shouldShowControlCenterTabControlOnFirstSwipe(id self, SEL _cmd) {
    // Show Grabber Tab On First Swipe
    return 0;
}

static void (*_orig_ftt_meth_$SBControlCenterSettings$setControlAlpha$)(id, SEL, double);
static void _patched_ftt_meth_$SBControlCenterSettings$setControlAlpha$(id self, SEL _cmd, double arg1) {
    // Control Alpha (ghost effect): {range=0.0 to 1}
    arg1 = 1;
    _orig_ftt_meth_$SBControlCenterSettings$setControlAlpha$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$SBLockScreenView$setBottomGrabberHidden$forRequester$)(id, SEL, bool, id);
static void _patched_ftt_meth_$SBLockScreenView$setBottomGrabberHidden$forRequester$(id self, SEL _cmd, bool arg1, id arg2) {
    // Hide LS Grabber
    arg1 = 0;
    _orig_ftt_meth_$SBLockScreenView$setBottomGrabberHidden$forRequester$(self, _cmd, arg1, arg2);
}

static void (*_orig_ftt_meth_$SBControlCenterSettings$setHighlightColor$)(id, SEL, id);
static void _patched_ftt_meth_$SBControlCenterSettings$setHighlightColor$(id self, SEL _cmd, id arg1) {
    // Highlight Color (slider/glyph)
    arg1 = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:255/255.0];
    _orig_ftt_meth_$SBControlCenterSettings$setHighlightColor$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$SBControlCenterSettings$setHighlightAlpha$)(id, SEL, double);
static void _patched_ftt_meth_$SBControlCenterSettings$setHighlightAlpha$(id self, SEL _cmd, double arg1) {
    // Highlight Alpha (of Glyphs while sliding):	{range=0.0 to 1}
    arg1 = 1;
    _orig_ftt_meth_$SBControlCenterSettings$setHighlightAlpha$(self, _cmd, arg1);
}

static bool _patched_ftt_meth_$SBCCBrightnessSectionController$_shouldDarkenBackground(id self, SEL _cmd) {
    // Brightness Dark Background
    return 1;
}

static void (*_orig_ftt_meth_$SBCCAirStuffSectionController$setAirDropEnabled$)(id, SEL, bool);
static void _patched_ftt_meth_$SBCCAirStuffSectionController$setAirDropEnabled$(id self, SEL _cmd, bool arg1) {
    // AirDrop (section)
    arg1 = 1;
    _orig_ftt_meth_$SBCCAirStuffSectionController$setAirDropEnabled$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBControlCenterContentContainerView = objc_getClass("SBControlCenterContentContainerView");
    MSHookMessageEx(_ftt_class_SBControlCenterContentContainerView, @selector(setContentHeight:), (IMP)_patched_ftt_meth_$SBControlCenterContentContainerView$setContentHeight$, (IMP *)_orig_ftt_meth_$SBControlCenterContentContainerView$setContentHeight$);
    Class _ftt_class_SBUIController = objc_getClass("SBUIController");
    MSHookMessageEx(_ftt_class_SBUIController, @selector(shouldShowControlCenterTabControlOnFirstSwipe), (IMP)_patched_ftt_meth_$SBUIController$shouldShowControlCenterTabControlOnFirstSwipe, NULL);
    Class _ftt_class_SBControlCenterSettings = objc_getClass("SBControlCenterSettings");
    MSHookMessageEx(_ftt_class_SBControlCenterSettings, @selector(setControlAlpha:), (IMP)_patched_ftt_meth_$SBControlCenterSettings$setControlAlpha$, (IMP *)_orig_ftt_meth_$SBControlCenterSettings$setControlAlpha$);
    Class _ftt_class_SBLockScreenView = objc_getClass("SBLockScreenView");
    MSHookMessageEx(_ftt_class_SBLockScreenView, @selector(setBottomGrabberHidden:forRequester:), (IMP)_patched_ftt_meth_$SBLockScreenView$setBottomGrabberHidden$forRequester$, (IMP *)_orig_ftt_meth_$SBLockScreenView$setBottomGrabberHidden$forRequester$);
    MSHookMessageEx(_ftt_class_SBControlCenterSettings, @selector(setHighlightColor:), (IMP)_patched_ftt_meth_$SBControlCenterSettings$setHighlightColor$, (IMP *)_orig_ftt_meth_$SBControlCenterSettings$setHighlightColor$);
    MSHookMessageEx(_ftt_class_SBControlCenterSettings, @selector(setHighlightAlpha:), (IMP)_patched_ftt_meth_$SBControlCenterSettings$setHighlightAlpha$, (IMP *)_orig_ftt_meth_$SBControlCenterSettings$setHighlightAlpha$);
    Class _ftt_class_SBCCBrightnessSectionController = objc_getClass("SBCCBrightnessSectionController");
    MSHookMessageEx(_ftt_class_SBCCBrightnessSectionController, @selector(_shouldDarkenBackground), (IMP)_patched_ftt_meth_$SBCCBrightnessSectionController$_shouldDarkenBackground, NULL);
    Class _ftt_class_SBCCAirStuffSectionController = objc_getClass("SBCCAirStuffSectionController");
    MSHookMessageEx(_ftt_class_SBCCAirStuffSectionController, @selector(setAirDropEnabled:), (IMP)_patched_ftt_meth_$SBCCAirStuffSectionController$setAirDropEnabled$, (IMP *)_orig_ftt_meth_$SBCCAirStuffSectionController$setAirDropEnabled$);
}
