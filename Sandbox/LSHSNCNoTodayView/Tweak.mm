#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$SBPolicyAggregator$_allowsCapabilityLockScreenTodayViewWithExplanation$(id self, SEL _cmd, id* arg1) {
    // LS
    return 0;
}

static unsigned long long _patched_ftt_meth_$SBRootFolderView$_minusPageCount(id self, SEL _cmd) {
    // HS
    return 0;
}

static bool _patched_ftt_meth_$SBSearchEtceteraLayoutView$_shouldAllowScrollingForStyle$(id self, SEL _cmd, unsigned long long arg1) {
    // NC
    return 0;
}

static bool _patched_ftt_meth_$SBNotificationCenterWithSearchViewController$showPageControl(id self, SEL _cmd) {
    // NC
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBPolicyAggregator = objc_getClass("SBPolicyAggregator");
    MSHookMessageEx(_ftt_class_SBPolicyAggregator, @selector(_allowsCapabilityLockScreenTodayViewWithExplanation:), (IMP)_patched_ftt_meth_$SBPolicyAggregator$_allowsCapabilityLockScreenTodayViewWithExplanation$, NULL);
    Class _ftt_class_SBRootFolderView = objc_getClass("SBRootFolderView");
    MSHookMessageEx(_ftt_class_SBRootFolderView, @selector(_minusPageCount), (IMP)_patched_ftt_meth_$SBRootFolderView$_minusPageCount, NULL);
    Class _ftt_class_SBSearchEtceteraLayoutView = objc_getClass("SBSearchEtceteraLayoutView");
    MSHookMessageEx(_ftt_class_SBSearchEtceteraLayoutView, @selector(_shouldAllowScrollingForStyle:), (IMP)_patched_ftt_meth_$SBSearchEtceteraLayoutView$_shouldAllowScrollingForStyle$, NULL);
    Class _ftt_class_SBNotificationCenterWithSearchViewController = objc_getClass("SBNotificationCenterWithSearchViewController");
    MSHookMessageEx(_ftt_class_SBNotificationCenterWithSearchViewController, @selector(showPageControl), (IMP)_patched_ftt_meth_$SBNotificationCenterWithSearchViewController$showPageControl, NULL);
}
