#line 1 "Tweak.xm"
#import <UIKit/UIKit.h>


#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

asm(".linker_option \"-framework\", \"CydiaSubstrate\"");

@class SBPolicyAggregator; @class SBHorizontalScrollFailureRecognizer; 
static bool (*_logos_orig$_ungrouped$SBHorizontalScrollFailureRecognizer$_isLocationOutOfBounds$)(_LOGOS_SELF_TYPE_NORMAL SBHorizontalScrollFailureRecognizer* _LOGOS_SELF_CONST, SEL, CGPoint); static bool _logos_method$_ungrouped$SBHorizontalScrollFailureRecognizer$_isLocationOutOfBounds$(_LOGOS_SELF_TYPE_NORMAL SBHorizontalScrollFailureRecognizer* _LOGOS_SELF_CONST, SEL, CGPoint); static bool (*_logos_orig$_ungrouped$SBPolicyAggregator$_allowsCapabilityLockScreenTodayViewWithExplanation$)(_LOGOS_SELF_TYPE_NORMAL SBPolicyAggregator* _LOGOS_SELF_CONST, SEL, id*); static bool _logos_method$_ungrouped$SBPolicyAggregator$_allowsCapabilityLockScreenTodayViewWithExplanation$(_LOGOS_SELF_TYPE_NORMAL SBPolicyAggregator* _LOGOS_SELF_CONST, SEL, id*); static bool (*_logos_orig$_ungrouped$SBPolicyAggregator$_allowsCapabilityLockScreenCameraSupportedWithExplanation$)(_LOGOS_SELF_TYPE_NORMAL SBPolicyAggregator* _LOGOS_SELF_CONST, SEL, id*); static bool _logos_method$_ungrouped$SBPolicyAggregator$_allowsCapabilityLockScreenCameraSupportedWithExplanation$(_LOGOS_SELF_TYPE_NORMAL SBPolicyAggregator* _LOGOS_SELF_CONST, SEL, id*); 

#line 3 "Tweak.xm"

static bool _logos_method$_ungrouped$SBHorizontalScrollFailureRecognizer$_isLocationOutOfBounds$(_LOGOS_SELF_TYPE_NORMAL SBHorizontalScrollFailureRecognizer* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, CGPoint arg1) {
    return 1;
}



static bool _logos_method$_ungrouped$SBPolicyAggregator$_allowsCapabilityLockScreenTodayViewWithExplanation$(_LOGOS_SELF_TYPE_NORMAL SBPolicyAggregator* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id* arg1) {
    return 0;
}



static bool _logos_method$_ungrouped$SBPolicyAggregator$_allowsCapabilityLockScreenCameraSupportedWithExplanation$(_LOGOS_SELF_TYPE_NORMAL SBPolicyAggregator* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id* arg1) {
    return 0;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SBHorizontalScrollFailureRecognizer = objc_getClass("SBHorizontalScrollFailureRecognizer"); { MSHookMessageEx(_logos_class$_ungrouped$SBHorizontalScrollFailureRecognizer, @selector(_isLocationOutOfBounds:), (IMP)&_logos_method$_ungrouped$SBHorizontalScrollFailureRecognizer$_isLocationOutOfBounds$, (IMP*)&_logos_orig$_ungrouped$SBHorizontalScrollFailureRecognizer$_isLocationOutOfBounds$);}Class _logos_class$_ungrouped$SBPolicyAggregator = objc_getClass("SBPolicyAggregator"); { MSHookMessageEx(_logos_class$_ungrouped$SBPolicyAggregator, @selector(_allowsCapabilityLockScreenTodayViewWithExplanation:), (IMP)&_logos_method$_ungrouped$SBPolicyAggregator$_allowsCapabilityLockScreenTodayViewWithExplanation$, (IMP*)&_logos_orig$_ungrouped$SBPolicyAggregator$_allowsCapabilityLockScreenTodayViewWithExplanation$);}{ MSHookMessageEx(_logos_class$_ungrouped$SBPolicyAggregator, @selector(_allowsCapabilityLockScreenCameraSupportedWithExplanation:), (IMP)&_logos_method$_ungrouped$SBPolicyAggregator$_allowsCapabilityLockScreenCameraSupportedWithExplanation$, (IMP*)&_logos_orig$_ungrouped$SBPolicyAggregator$_allowsCapabilityLockScreenCameraSupportedWithExplanation$);}} }
#line 21 "Tweak.xm"
