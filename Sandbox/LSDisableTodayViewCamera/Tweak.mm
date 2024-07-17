#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$SBHorizontalScrollFailureRecognizer$_isLocationOutOfBounds$(id self, SEL _cmd, CGPoint arg1) {
    return 1;
}

static bool _patched_ftt_meth_$SBPolicyAggregator$_allowsCapabilityLockScreenTodayViewWithExplanation$(id self, SEL _cmd, id* arg1) {
    return 0;
}

static bool _patched_ftt_meth_$SBPolicyAggregator$_allowsCapabilityLockScreenCameraSupportedWithExplanation$(id self, SEL _cmd, id* arg1) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBHorizontalScrollFailureRecognizer = objc_getClass("SBHorizontalScrollFailureRecognizer");
    MSHookMessageEx(_ftt_class_SBHorizontalScrollFailureRecognizer, @selector(_isLocationOutOfBounds:), (IMP)_patched_ftt_meth_$SBHorizontalScrollFailureRecognizer$_isLocationOutOfBounds$, NULL);
    Class _ftt_class_SBPolicyAggregator = objc_getClass("SBPolicyAggregator");
    MSHookMessageEx(_ftt_class_SBPolicyAggregator, @selector(_allowsCapabilityLockScreenTodayViewWithExplanation:), (IMP)_patched_ftt_meth_$SBPolicyAggregator$_allowsCapabilityLockScreenTodayViewWithExplanation$, NULL);
    MSHookMessageEx(_ftt_class_SBPolicyAggregator, @selector(_allowsCapabilityLockScreenCameraSupportedWithExplanation:), (IMP)_patched_ftt_meth_$SBPolicyAggregator$_allowsCapabilityLockScreenCameraSupportedWithExplanation$, NULL);
}
