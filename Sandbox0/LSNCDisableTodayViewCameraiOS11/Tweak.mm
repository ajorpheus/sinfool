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

@class SBDashBoardCombinedListViewController; @class SBMainDisplayPolicyAggregator; 
static bool (*_logos_orig$_ungrouped$SBDashBoardCombinedListViewController$_disableScrolling)(_LOGOS_SELF_TYPE_NORMAL SBDashBoardCombinedListViewController* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$SBDashBoardCombinedListViewController$_disableScrolling(_LOGOS_SELF_TYPE_NORMAL SBDashBoardCombinedListViewController* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$SBMainDisplayPolicyAggregator$_allowsCapabilityLockScreenTodayViewWithExplanation$)(_LOGOS_SELF_TYPE_NORMAL SBMainDisplayPolicyAggregator* _LOGOS_SELF_CONST, SEL, id*); static bool _logos_method$_ungrouped$SBMainDisplayPolicyAggregator$_allowsCapabilityLockScreenTodayViewWithExplanation$(_LOGOS_SELF_TYPE_NORMAL SBMainDisplayPolicyAggregator* _LOGOS_SELF_CONST, SEL, id*); static bool (*_logos_orig$_ungrouped$SBMainDisplayPolicyAggregator$_allowsCapabilityLockScreenCameraWithExplanation$)(_LOGOS_SELF_TYPE_NORMAL SBMainDisplayPolicyAggregator* _LOGOS_SELF_CONST, SEL, id*); static bool _logos_method$_ungrouped$SBMainDisplayPolicyAggregator$_allowsCapabilityLockScreenCameraWithExplanation$(_LOGOS_SELF_TYPE_NORMAL SBMainDisplayPolicyAggregator* _LOGOS_SELF_CONST, SEL, id*); 

#line 3 "Tweak.xm"

static bool _logos_method$_ungrouped$SBDashBoardCombinedListViewController$_disableScrolling(_LOGOS_SELF_TYPE_NORMAL SBDashBoardCombinedListViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 1;
}



static bool _logos_method$_ungrouped$SBMainDisplayPolicyAggregator$_allowsCapabilityLockScreenTodayViewWithExplanation$(_LOGOS_SELF_TYPE_NORMAL SBMainDisplayPolicyAggregator* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id* arg1) {
    return 0;
}



static bool _logos_method$_ungrouped$SBMainDisplayPolicyAggregator$_allowsCapabilityLockScreenCameraWithExplanation$(_LOGOS_SELF_TYPE_NORMAL SBMainDisplayPolicyAggregator* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id* arg1) {
    return 0;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SBDashBoardCombinedListViewController = objc_getClass("SBDashBoardCombinedListViewController"); { MSHookMessageEx(_logos_class$_ungrouped$SBDashBoardCombinedListViewController, @selector(_disableScrolling), (IMP)&_logos_method$_ungrouped$SBDashBoardCombinedListViewController$_disableScrolling, (IMP*)&_logos_orig$_ungrouped$SBDashBoardCombinedListViewController$_disableScrolling);}Class _logos_class$_ungrouped$SBMainDisplayPolicyAggregator = objc_getClass("SBMainDisplayPolicyAggregator"); { MSHookMessageEx(_logos_class$_ungrouped$SBMainDisplayPolicyAggregator, @selector(_allowsCapabilityLockScreenTodayViewWithExplanation:), (IMP)&_logos_method$_ungrouped$SBMainDisplayPolicyAggregator$_allowsCapabilityLockScreenTodayViewWithExplanation$, (IMP*)&_logos_orig$_ungrouped$SBMainDisplayPolicyAggregator$_allowsCapabilityLockScreenTodayViewWithExplanation$);}{ MSHookMessageEx(_logos_class$_ungrouped$SBMainDisplayPolicyAggregator, @selector(_allowsCapabilityLockScreenCameraWithExplanation:), (IMP)&_logos_method$_ungrouped$SBMainDisplayPolicyAggregator$_allowsCapabilityLockScreenCameraWithExplanation$, (IMP*)&_logos_orig$_ungrouped$SBMainDisplayPolicyAggregator$_allowsCapabilityLockScreenCameraWithExplanation$);}} }
#line 22 "Tweak.xm"
