#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$SBAppSwitcherController$_updatePageViewScale$xTranslation$)(id, SEL, double, double);
static void _patched_ftt_meth_$SBAppSwitcherController$_updatePageViewScale$xTranslation$(id self, SEL _cmd, double arg1, double arg2) {
    // ⚠️ Cards - Size:	(Arg#1): [Range (0.0 - 2.0) Stock=1] ***DELETE IF NOT USING***
    arg1 = 1;
    _orig_ftt_meth_$SBAppSwitcherController$_updatePageViewScale$xTranslation$(self, _cmd, arg1, arg2);
}

static void (*_orig_ftt_meth_$SBAppSwitcherPageViewController$setOffsetToIndex$animated$)(id, SEL, unsigned long long, bool);
static void _patched_ftt_meth_$SBAppSwitcherPageViewController$setOffsetToIndex$animated$(id self, SEL _cmd, unsigned long long arg1, bool arg2) {
    // Cards - Open With:  [HS=0, Current App=1, Last App=2]
    arg1 = 2;
    _orig_ftt_meth_$SBAppSwitcherPageViewController$setOffsetToIndex$animated$(self, _cmd, arg1, arg2);
}

static void (*_orig_ftt_meth_$SBAppSwitcherIconController$setOffsetToIndex$animated$)(id, SEL, unsigned long long, bool);
static void _patched_ftt_meth_$SBAppSwitcherIconController$setOffsetToIndex$animated$(id self, SEL _cmd, unsigned long long arg1, bool arg2) {
    // Icons - Open With:  [HS=0, Current App=1, Last App=2]
    arg1 = 2;
    _orig_ftt_meth_$SBAppSwitcherIconController$setOffsetToIndex$animated$(self, _cmd, arg1, arg2);
}

static id _patched_ftt_meth_$SBUIDismissSwitcherAnimationController$initWithTransitionContextProvider$activatingDisplayItem$interactive$(id self, SEL _cmd, id arg1, id arg2, bool arg3) {
    // Animation - Remove Dismiss Animation/Scaled Image Overlay & Allow Immediate Interaction w/Apps "If Loaded" (but if "not loaded" then no opening animation):		  [YES=(Return Value):NULL]
    return NULL;
}

static long long _patched_ftt_meth_$SBAppSwitcherSettings$switcherStyle(id self, SEL _cmd) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBAppSwitcherController = objc_getClass("SBAppSwitcherController");
    MSHookMessageEx(_ftt_class_SBAppSwitcherController, @selector(_updatePageViewScale:xTranslation:), (IMP)_patched_ftt_meth_$SBAppSwitcherController$_updatePageViewScale$xTranslation$, (IMP *)_orig_ftt_meth_$SBAppSwitcherController$_updatePageViewScale$xTranslation$);
    Class _ftt_class_SBAppSwitcherPageViewController = objc_getClass("SBAppSwitcherPageViewController");
    MSHookMessageEx(_ftt_class_SBAppSwitcherPageViewController, @selector(setOffsetToIndex:animated:), (IMP)_patched_ftt_meth_$SBAppSwitcherPageViewController$setOffsetToIndex$animated$, (IMP *)_orig_ftt_meth_$SBAppSwitcherPageViewController$setOffsetToIndex$animated$);
    Class _ftt_class_SBAppSwitcherIconController = objc_getClass("SBAppSwitcherIconController");
    MSHookMessageEx(_ftt_class_SBAppSwitcherIconController, @selector(setOffsetToIndex:animated:), (IMP)_patched_ftt_meth_$SBAppSwitcherIconController$setOffsetToIndex$animated$, (IMP *)_orig_ftt_meth_$SBAppSwitcherIconController$setOffsetToIndex$animated$);
    Class _ftt_class_SBUIDismissSwitcherAnimationController = objc_getClass("SBUIDismissSwitcherAnimationController");
    MSHookMessageEx(_ftt_class_SBUIDismissSwitcherAnimationController, @selector(initWithTransitionContextProvider:activatingDisplayItem:interactive:), (IMP)_patched_ftt_meth_$SBUIDismissSwitcherAnimationController$initWithTransitionContextProvider$activatingDisplayItem$interactive$, NULL);
    Class _ftt_class_SBAppSwitcherSettings = objc_getClass("SBAppSwitcherSettings");
    MSHookMessageEx(_ftt_class_SBAppSwitcherSettings, @selector(switcherStyle), (IMP)_patched_ftt_meth_$SBAppSwitcherSettings$switcherStyle, NULL);
}
