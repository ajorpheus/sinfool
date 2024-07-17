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

@class SBRootFolderView; @class SBSearchEtceteraLayoutView; @class SBPolicyAggregator; @class SBNotificationCenterWithSearchViewController; 
static bool (*_logos_orig$_ungrouped$SBPolicyAggregator$_allowsCapabilityLockScreenTodayViewWithExplanation$)(_LOGOS_SELF_TYPE_NORMAL SBPolicyAggregator* _LOGOS_SELF_CONST, SEL, id*); static bool _logos_method$_ungrouped$SBPolicyAggregator$_allowsCapabilityLockScreenTodayViewWithExplanation$(_LOGOS_SELF_TYPE_NORMAL SBPolicyAggregator* _LOGOS_SELF_CONST, SEL, id*); static unsigned long long (*_logos_orig$_ungrouped$SBRootFolderView$_minusPageCount)(_LOGOS_SELF_TYPE_NORMAL SBRootFolderView* _LOGOS_SELF_CONST, SEL); static unsigned long long _logos_method$_ungrouped$SBRootFolderView$_minusPageCount(_LOGOS_SELF_TYPE_NORMAL SBRootFolderView* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$SBSearchEtceteraLayoutView$_shouldAllowScrollingForStyle$)(_LOGOS_SELF_TYPE_NORMAL SBSearchEtceteraLayoutView* _LOGOS_SELF_CONST, SEL, unsigned long long); static bool _logos_method$_ungrouped$SBSearchEtceteraLayoutView$_shouldAllowScrollingForStyle$(_LOGOS_SELF_TYPE_NORMAL SBSearchEtceteraLayoutView* _LOGOS_SELF_CONST, SEL, unsigned long long); static bool (*_logos_orig$_ungrouped$SBNotificationCenterWithSearchViewController$showPageControl)(_LOGOS_SELF_TYPE_NORMAL SBNotificationCenterWithSearchViewController* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$SBNotificationCenterWithSearchViewController$showPageControl(_LOGOS_SELF_TYPE_NORMAL SBNotificationCenterWithSearchViewController* _LOGOS_SELF_CONST, SEL); 

#line 3 "Tweak.xm"

static bool _logos_method$_ungrouped$SBPolicyAggregator$_allowsCapabilityLockScreenTodayViewWithExplanation$(_LOGOS_SELF_TYPE_NORMAL SBPolicyAggregator* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id* arg1) {
    
    return 0;
}



static unsigned long long _logos_method$_ungrouped$SBRootFolderView$_minusPageCount(_LOGOS_SELF_TYPE_NORMAL SBRootFolderView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 0;
}



static bool _logos_method$_ungrouped$SBSearchEtceteraLayoutView$_shouldAllowScrollingForStyle$(_LOGOS_SELF_TYPE_NORMAL SBSearchEtceteraLayoutView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, unsigned long long arg1) {
    
    return 0;
}



static bool _logos_method$_ungrouped$SBNotificationCenterWithSearchViewController$showPageControl(_LOGOS_SELF_TYPE_NORMAL SBNotificationCenterWithSearchViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 0;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SBPolicyAggregator = objc_getClass("SBPolicyAggregator"); { MSHookMessageEx(_logos_class$_ungrouped$SBPolicyAggregator, @selector(_allowsCapabilityLockScreenTodayViewWithExplanation:), (IMP)&_logos_method$_ungrouped$SBPolicyAggregator$_allowsCapabilityLockScreenTodayViewWithExplanation$, (IMP*)&_logos_orig$_ungrouped$SBPolicyAggregator$_allowsCapabilityLockScreenTodayViewWithExplanation$);}Class _logos_class$_ungrouped$SBRootFolderView = objc_getClass("SBRootFolderView"); { MSHookMessageEx(_logos_class$_ungrouped$SBRootFolderView, @selector(_minusPageCount), (IMP)&_logos_method$_ungrouped$SBRootFolderView$_minusPageCount, (IMP*)&_logos_orig$_ungrouped$SBRootFolderView$_minusPageCount);}Class _logos_class$_ungrouped$SBSearchEtceteraLayoutView = objc_getClass("SBSearchEtceteraLayoutView"); { MSHookMessageEx(_logos_class$_ungrouped$SBSearchEtceteraLayoutView, @selector(_shouldAllowScrollingForStyle:), (IMP)&_logos_method$_ungrouped$SBSearchEtceteraLayoutView$_shouldAllowScrollingForStyle$, (IMP*)&_logos_orig$_ungrouped$SBSearchEtceteraLayoutView$_shouldAllowScrollingForStyle$);}Class _logos_class$_ungrouped$SBNotificationCenterWithSearchViewController = objc_getClass("SBNotificationCenterWithSearchViewController"); { MSHookMessageEx(_logos_class$_ungrouped$SBNotificationCenterWithSearchViewController, @selector(showPageControl), (IMP)&_logos_method$_ungrouped$SBNotificationCenterWithSearchViewController$showPageControl, (IMP*)&_logos_orig$_ungrouped$SBNotificationCenterWithSearchViewController$showPageControl);}} }
#line 31 "Tweak.xm"
