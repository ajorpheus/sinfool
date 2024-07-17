#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$SBMainDisplayPolicyAggregator$_allowsCapabilityLockScreenTodayViewWithExplanation$(id self, SEL _cmd, id* arg1) {
    return 0;
}

static bool _patched_ftt_meth_$SBMainDisplayPolicyAggregator$_allowsCapabilityTodayViewWithExplanation$(id self, SEL _cmd, id* arg1) {
    return 0;
}

static unsigned long long _patched_ftt_meth_$SBRootFolderView$_minusPageCount(id self, SEL _cmd) {
    return 0;
}

static void (*_orig_ftt_meth_$SBHomeScreenTodayViewController$setHidden$)(id, SEL, bool);
static void _patched_ftt_meth_$SBHomeScreenTodayViewController$setHidden$(id self, SEL _cmd, bool arg1) {
    arg1 = 1;
    _orig_ftt_meth_$SBHomeScreenTodayViewController$setHidden$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBMainDisplayPolicyAggregator = objc_getClass("SBMainDisplayPolicyAggregator");
    MSHookMessageEx(_ftt_class_SBMainDisplayPolicyAggregator, @selector(_allowsCapabilityLockScreenTodayViewWithExplanation:), (IMP)_patched_ftt_meth_$SBMainDisplayPolicyAggregator$_allowsCapabilityLockScreenTodayViewWithExplanation$, NULL);
    MSHookMessageEx(_ftt_class_SBMainDisplayPolicyAggregator, @selector(_allowsCapabilityTodayViewWithExplanation:), (IMP)_patched_ftt_meth_$SBMainDisplayPolicyAggregator$_allowsCapabilityTodayViewWithExplanation$, NULL);
    Class _ftt_class_SBRootFolderView = objc_getClass("SBRootFolderView");
    MSHookMessageEx(_ftt_class_SBRootFolderView, @selector(_minusPageCount), (IMP)_patched_ftt_meth_$SBRootFolderView$_minusPageCount, NULL);
    Class _ftt_class_SBHomeScreenTodayViewController = objc_getClass("SBHomeScreenTodayViewController");
    MSHookMessageEx(_ftt_class_SBHomeScreenTodayViewController, @selector(setHidden:), (IMP)_patched_ftt_meth_$SBHomeScreenTodayViewController$setHidden$, (IMP *)_orig_ftt_meth_$SBHomeScreenTodayViewController$setHidden$);
}
