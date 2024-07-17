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

@class SBMainDisplayPolicyAggregator; @class SBHomeScreenTodayViewController; @class SBRootFolderView; 
static bool (*_logos_orig$_ungrouped$SBMainDisplayPolicyAggregator$_allowsCapabilityLockScreenTodayViewWithExplanation$)(_LOGOS_SELF_TYPE_NORMAL SBMainDisplayPolicyAggregator* _LOGOS_SELF_CONST, SEL, id*); static bool _logos_method$_ungrouped$SBMainDisplayPolicyAggregator$_allowsCapabilityLockScreenTodayViewWithExplanation$(_LOGOS_SELF_TYPE_NORMAL SBMainDisplayPolicyAggregator* _LOGOS_SELF_CONST, SEL, id*); static bool (*_logos_orig$_ungrouped$SBMainDisplayPolicyAggregator$_allowsCapabilityTodayViewWithExplanation$)(_LOGOS_SELF_TYPE_NORMAL SBMainDisplayPolicyAggregator* _LOGOS_SELF_CONST, SEL, id*); static bool _logos_method$_ungrouped$SBMainDisplayPolicyAggregator$_allowsCapabilityTodayViewWithExplanation$(_LOGOS_SELF_TYPE_NORMAL SBMainDisplayPolicyAggregator* _LOGOS_SELF_CONST, SEL, id*); static unsigned long long (*_logos_orig$_ungrouped$SBRootFolderView$_minusPageCount)(_LOGOS_SELF_TYPE_NORMAL SBRootFolderView* _LOGOS_SELF_CONST, SEL); static unsigned long long _logos_method$_ungrouped$SBRootFolderView$_minusPageCount(_LOGOS_SELF_TYPE_NORMAL SBRootFolderView* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$SBHomeScreenTodayViewController$setHidden$)(_LOGOS_SELF_TYPE_NORMAL SBHomeScreenTodayViewController* _LOGOS_SELF_CONST, SEL, bool); static void _logos_method$_ungrouped$SBHomeScreenTodayViewController$setHidden$(_LOGOS_SELF_TYPE_NORMAL SBHomeScreenTodayViewController* _LOGOS_SELF_CONST, SEL, bool); 

#line 3 "Tweak.xm"

static bool _logos_method$_ungrouped$SBMainDisplayPolicyAggregator$_allowsCapabilityLockScreenTodayViewWithExplanation$(_LOGOS_SELF_TYPE_NORMAL SBMainDisplayPolicyAggregator* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id* arg1) {
    return 0;
}



static bool _logos_method$_ungrouped$SBMainDisplayPolicyAggregator$_allowsCapabilityTodayViewWithExplanation$(_LOGOS_SELF_TYPE_NORMAL SBMainDisplayPolicyAggregator* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id* arg1) {
    return 0;
}



static unsigned long long _logos_method$_ungrouped$SBRootFolderView$_minusPageCount(_LOGOS_SELF_TYPE_NORMAL SBRootFolderView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 0;
}



static void _logos_method$_ungrouped$SBHomeScreenTodayViewController$setHidden$(_LOGOS_SELF_TYPE_NORMAL SBHomeScreenTodayViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, bool arg1) {
    arg1 = 1;
    _logos_orig$_ungrouped$SBHomeScreenTodayViewController$setHidden$(self, _cmd, arg1);
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SBMainDisplayPolicyAggregator = objc_getClass("SBMainDisplayPolicyAggregator"); { MSHookMessageEx(_logos_class$_ungrouped$SBMainDisplayPolicyAggregator, @selector(_allowsCapabilityLockScreenTodayViewWithExplanation:), (IMP)&_logos_method$_ungrouped$SBMainDisplayPolicyAggregator$_allowsCapabilityLockScreenTodayViewWithExplanation$, (IMP*)&_logos_orig$_ungrouped$SBMainDisplayPolicyAggregator$_allowsCapabilityLockScreenTodayViewWithExplanation$);}{ MSHookMessageEx(_logos_class$_ungrouped$SBMainDisplayPolicyAggregator, @selector(_allowsCapabilityTodayViewWithExplanation:), (IMP)&_logos_method$_ungrouped$SBMainDisplayPolicyAggregator$_allowsCapabilityTodayViewWithExplanation$, (IMP*)&_logos_orig$_ungrouped$SBMainDisplayPolicyAggregator$_allowsCapabilityTodayViewWithExplanation$);}Class _logos_class$_ungrouped$SBRootFolderView = objc_getClass("SBRootFolderView"); { MSHookMessageEx(_logos_class$_ungrouped$SBRootFolderView, @selector(_minusPageCount), (IMP)&_logos_method$_ungrouped$SBRootFolderView$_minusPageCount, (IMP*)&_logos_orig$_ungrouped$SBRootFolderView$_minusPageCount);}Class _logos_class$_ungrouped$SBHomeScreenTodayViewController = objc_getClass("SBHomeScreenTodayViewController"); { MSHookMessageEx(_logos_class$_ungrouped$SBHomeScreenTodayViewController, @selector(setHidden:), (IMP)&_logos_method$_ungrouped$SBHomeScreenTodayViewController$setHidden$, (IMP*)&_logos_orig$_ungrouped$SBHomeScreenTodayViewController$setHidden$);}} }
#line 28 "Tweak.xm"
