#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$SBDashBoardTodayViewController$_shouldHideDateTimeForZeroWidgetDisplay(id self, SEL _cmd) {
    // Today View - Time/Date Visibility: (Show=F, Hide=T)
    return 1;
}

static bool _patched_ftt_meth_$SBDashBoardViewController$shouldAutorotate(id self, SEL _cmd) {
    // LS - Enable Rotation: (Yes=T, No=F)
    return 1;
}

static void (*_orig_ftt_meth_$SBFLockScreenDateView$setAlignmentPercent$)(id, SEL, double);
static void _patched_ftt_meth_$SBFLockScreenDateView$setAlignmentPercent$(id self, SEL _cmd, double arg1) {
    arg1 = -1;
    _orig_ftt_meth_$SBFLockScreenDateView$setAlignmentPercent$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBDashBoardTodayViewController = objc_getClass("SBDashBoardTodayViewController");
    MSHookMessageEx(_ftt_class_SBDashBoardTodayViewController, @selector(_shouldHideDateTimeForZeroWidgetDisplay), (IMP)_patched_ftt_meth_$SBDashBoardTodayViewController$_shouldHideDateTimeForZeroWidgetDisplay, NULL);
    Class _ftt_class_SBDashBoardViewController = objc_getClass("SBDashBoardViewController");
    MSHookMessageEx(_ftt_class_SBDashBoardViewController, @selector(shouldAutorotate), (IMP)_patched_ftt_meth_$SBDashBoardViewController$shouldAutorotate, NULL);
    Class _ftt_class_SBFLockScreenDateView = objc_getClass("SBFLockScreenDateView");
    MSHookMessageEx(_ftt_class_SBFLockScreenDateView, @selector(setAlignmentPercent:), (IMP)_patched_ftt_meth_$SBFLockScreenDateView$setAlignmentPercent$, (IMP *)_orig_ftt_meth_$SBFLockScreenDateView$setAlignmentPercent$);
}
