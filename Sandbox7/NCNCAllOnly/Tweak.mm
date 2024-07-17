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

@class SBNotificationCenterLayoutViewController; @class SBModeViewController; @class SBNotificationSeparatorView; 
static double (*_logos_orig$_ungrouped$SBModeViewController$_headerViewHeightForMode$)(_LOGOS_SELF_TYPE_NORMAL SBModeViewController* _LOGOS_SELF_CONST, SEL, long long); static double _logos_method$_ungrouped$SBModeViewController$_headerViewHeightForMode$(_LOGOS_SELF_TYPE_NORMAL SBModeViewController* _LOGOS_SELF_CONST, SEL, long long); static bool (*_logos_orig$_ungrouped$SBNotificationCenterLayoutViewController$_areWidgetViewControllersAvailable)(_LOGOS_SELF_TYPE_NORMAL SBNotificationCenterLayoutViewController* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$SBNotificationCenterLayoutViewController$_areWidgetViewControllersAvailable(_LOGOS_SELF_TYPE_NORMAL SBNotificationCenterLayoutViewController* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$SBNotificationCenterLayoutViewController$_areNotificationsViewControllersAvailable)(_LOGOS_SELF_TYPE_NORMAL SBNotificationCenterLayoutViewController* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$SBNotificationCenterLayoutViewController$_areNotificationsViewControllersAvailable(_LOGOS_SELF_TYPE_NORMAL SBNotificationCenterLayoutViewController* _LOGOS_SELF_CONST, SEL); static SBNotificationSeparatorView* (*_logos_orig$_ungrouped$SBNotificationSeparatorView$initWithFrame$mode$)(_LOGOS_SELF_TYPE_INIT SBNotificationSeparatorView*, SEL, CGRect, long long) _LOGOS_RETURN_RETAINED; static SBNotificationSeparatorView* _logos_method$_ungrouped$SBNotificationSeparatorView$initWithFrame$mode$(_LOGOS_SELF_TYPE_INIT SBNotificationSeparatorView*, SEL, CGRect, long long) _LOGOS_RETURN_RETAINED; 

#line 3 "Tweak.xm"

static double _logos_method$_ungrouped$SBModeViewController$_headerViewHeightForMode$(_LOGOS_SELF_TYPE_NORMAL SBModeViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, long long arg1) {
    
    return 0;
}



static bool _logos_method$_ungrouped$SBNotificationCenterLayoutViewController$_areWidgetViewControllersAvailable(_LOGOS_SELF_TYPE_NORMAL SBNotificationCenterLayoutViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 0;
}



static bool _logos_method$_ungrouped$SBNotificationCenterLayoutViewController$_areNotificationsViewControllersAvailable(_LOGOS_SELF_TYPE_NORMAL SBNotificationCenterLayoutViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 1;
}



static SBNotificationSeparatorView* _logos_method$_ungrouped$SBNotificationSeparatorView$initWithFrame$mode$(_LOGOS_SELF_TYPE_INIT SBNotificationSeparatorView* __unused self, SEL __unused _cmd, CGRect arg1, long long arg2) _LOGOS_RETURN_RETAINED {
    
    return NULL;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SBModeViewController = objc_getClass("SBModeViewController"); { MSHookMessageEx(_logos_class$_ungrouped$SBModeViewController, @selector(_headerViewHeightForMode:), (IMP)&_logos_method$_ungrouped$SBModeViewController$_headerViewHeightForMode$, (IMP*)&_logos_orig$_ungrouped$SBModeViewController$_headerViewHeightForMode$);}Class _logos_class$_ungrouped$SBNotificationCenterLayoutViewController = objc_getClass("SBNotificationCenterLayoutViewController"); { MSHookMessageEx(_logos_class$_ungrouped$SBNotificationCenterLayoutViewController, @selector(_areWidgetViewControllersAvailable), (IMP)&_logos_method$_ungrouped$SBNotificationCenterLayoutViewController$_areWidgetViewControllersAvailable, (IMP*)&_logos_orig$_ungrouped$SBNotificationCenterLayoutViewController$_areWidgetViewControllersAvailable);}{ MSHookMessageEx(_logos_class$_ungrouped$SBNotificationCenterLayoutViewController, @selector(_areNotificationsViewControllersAvailable), (IMP)&_logos_method$_ungrouped$SBNotificationCenterLayoutViewController$_areNotificationsViewControllersAvailable, (IMP*)&_logos_orig$_ungrouped$SBNotificationCenterLayoutViewController$_areNotificationsViewControllersAvailable);}Class _logos_class$_ungrouped$SBNotificationSeparatorView = objc_getClass("SBNotificationSeparatorView"); { MSHookMessageEx(_logos_class$_ungrouped$SBNotificationSeparatorView, @selector(initWithFrame:mode:), (IMP)&_logos_method$_ungrouped$SBNotificationSeparatorView$initWithFrame$mode$, (IMP*)&_logos_orig$_ungrouped$SBNotificationSeparatorView$initWithFrame$mode$);}} }
#line 31 "Tweak.xm"
