#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$SBDashBoardCombinedListViewController$_disableScrolling(id self, SEL _cmd) {
    // Disables Horizontal Scrolling Of Notifications
    return 1;
}

static bool _patched_ftt_meth_$SBMainDisplayPolicyAggregator$_allowsCapabilityLockScreenTodayViewWithExplanation$(id self, SEL _cmd, id* arg1) {
    return 0;
}

static bool _patched_ftt_meth_$SBMainDisplayPolicyAggregator$_allowsCapabilityLockScreenCameraWithExplanation$(id self, SEL _cmd, id* arg1) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBDashBoardCombinedListViewController = objc_getClass("SBDashBoardCombinedListViewController");
    MSHookMessageEx(_ftt_class_SBDashBoardCombinedListViewController, @selector(_disableScrolling), (IMP)_patched_ftt_meth_$SBDashBoardCombinedListViewController$_disableScrolling, NULL);
    Class _ftt_class_SBMainDisplayPolicyAggregator = objc_getClass("SBMainDisplayPolicyAggregator");
    MSHookMessageEx(_ftt_class_SBMainDisplayPolicyAggregator, @selector(_allowsCapabilityLockScreenTodayViewWithExplanation:), (IMP)_patched_ftt_meth_$SBMainDisplayPolicyAggregator$_allowsCapabilityLockScreenTodayViewWithExplanation$, NULL);
    MSHookMessageEx(_ftt_class_SBMainDisplayPolicyAggregator, @selector(_allowsCapabilityLockScreenCameraWithExplanation:), (IMP)_patched_ftt_meth_$SBMainDisplayPolicyAggregator$_allowsCapabilityLockScreenCameraWithExplanation$, NULL);
}
