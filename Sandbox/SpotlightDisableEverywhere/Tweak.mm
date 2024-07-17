#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$SBSearchEtceteraNavigationController$setShouldUnderlapNavigationBar$)(id, SEL, bool);
static void _patched_ftt_meth_$SBSearchEtceteraNavigationController$setShouldUnderlapNavigationBar$(id self, SEL _cmd, bool arg1) {
    arg1 = 1;
    _orig_ftt_meth_$SBSearchEtceteraNavigationController$setShouldUnderlapNavigationBar$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$SPUINavigationBar$showSeparator$animated$)(id, SEL, bool, bool);
static void _patched_ftt_meth_$SPUINavigationBar$showSeparator$animated$(id self, SEL _cmd, bool arg1, bool arg2) {
    arg1 = 0;
    _orig_ftt_meth_$SPUINavigationBar$showSeparator$animated$(self, _cmd, arg1, arg2);
}

static double _patched_ftt_meth_$SBSearchEtceteraNavigationController$_statusBarHeightAdjustmentForCurrentOrientation(id self, SEL _cmd) {
    return 0;
}

static void (*_orig_ftt_meth_$SBSearchEtceteraTodayLayoutContentView$setCurrentStyle$)(id, SEL, unsigned long long);
static void _patched_ftt_meth_$SBSearchEtceteraTodayLayoutContentView$setCurrentStyle$(id self, SEL _cmd, unsigned long long arg1) {
    arg1 = 8;
    _orig_ftt_meth_$SBSearchEtceteraTodayLayoutContentView$setCurrentStyle$(self, _cmd, arg1);
}

static bool _patched_ftt_meth_$SBDashBoardTodayViewController$_shouldHideDateTimeForZeroWidgetDisplay(id self, SEL _cmd) {
    return 1;
}

static void (*_orig_ftt_meth_$SBSearchGesture$setDisabled$forReason$)(id, SEL, bool, id);
static void _patched_ftt_meth_$SBSearchGesture$setDisabled$forReason$(id self, SEL _cmd, bool arg1, id arg2) {
    arg1 = 1;
    _orig_ftt_meth_$SBSearchGesture$setDisabled$forReason$(self, _cmd, arg1, arg2);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBSearchEtceteraNavigationController = objc_getClass("SBSearchEtceteraNavigationController");
    MSHookMessageEx(_ftt_class_SBSearchEtceteraNavigationController, @selector(setShouldUnderlapNavigationBar:), (IMP)_patched_ftt_meth_$SBSearchEtceteraNavigationController$setShouldUnderlapNavigationBar$, (IMP *)_orig_ftt_meth_$SBSearchEtceteraNavigationController$setShouldUnderlapNavigationBar$);
    Class _ftt_class_SPUINavigationBar = objc_getClass("SPUINavigationBar");
    MSHookMessageEx(_ftt_class_SPUINavigationBar, @selector(showSeparator:animated:), (IMP)_patched_ftt_meth_$SPUINavigationBar$showSeparator$animated$, (IMP *)_orig_ftt_meth_$SPUINavigationBar$showSeparator$animated$);
    MSHookMessageEx(_ftt_class_SBSearchEtceteraNavigationController, @selector(_statusBarHeightAdjustmentForCurrentOrientation), (IMP)_patched_ftt_meth_$SBSearchEtceteraNavigationController$_statusBarHeightAdjustmentForCurrentOrientation, NULL);
    Class _ftt_class_SBSearchEtceteraTodayLayoutContentView = objc_getClass("SBSearchEtceteraTodayLayoutContentView");
    MSHookMessageEx(_ftt_class_SBSearchEtceteraTodayLayoutContentView, @selector(setCurrentStyle:), (IMP)_patched_ftt_meth_$SBSearchEtceteraTodayLayoutContentView$setCurrentStyle$, (IMP *)_orig_ftt_meth_$SBSearchEtceteraTodayLayoutContentView$setCurrentStyle$);
    Class _ftt_class_SBDashBoardTodayViewController = objc_getClass("SBDashBoardTodayViewController");
    MSHookMessageEx(_ftt_class_SBDashBoardTodayViewController, @selector(_shouldHideDateTimeForZeroWidgetDisplay), (IMP)_patched_ftt_meth_$SBDashBoardTodayViewController$_shouldHideDateTimeForZeroWidgetDisplay, NULL);
    Class _ftt_class_SBSearchGesture = objc_getClass("SBSearchGesture");
    MSHookMessageEx(_ftt_class_SBSearchGesture, @selector(setDisabled:forReason:), (IMP)_patched_ftt_meth_$SBSearchGesture$setDisabled$forReason$, (IMP *)_orig_ftt_meth_$SBSearchGesture$setDisabled$forReason$);
}
