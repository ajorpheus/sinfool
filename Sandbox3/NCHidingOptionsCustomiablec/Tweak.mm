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

@class SBTodayViewController; @class SBBulletinViewController; @class SBNotificationSeparatorView; 
static SBNotificationSeparatorView* (*_logos_orig$_ungrouped$SBNotificationSeparatorView$initWithFrame$mode$)(_LOGOS_SELF_TYPE_INIT SBNotificationSeparatorView*, SEL, CGRect, long long) _LOGOS_RETURN_RETAINED; static SBNotificationSeparatorView* _logos_method$_ungrouped$SBNotificationSeparatorView$initWithFrame$mode$(_LOGOS_SELF_TYPE_INIT SBNotificationSeparatorView*, SEL, CGRect, long long) _LOGOS_RETURN_RETAINED; static id (*_logos_orig$_ungrouped$SBTodayViewController$todayTableHeaderView)(_LOGOS_SELF_TYPE_NORMAL SBTodayViewController* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$SBTodayViewController$todayTableHeaderView(_LOGOS_SELF_TYPE_NORMAL SBTodayViewController* _LOGOS_SELF_CONST, SEL); static id (*_logos_orig$_ungrouped$SBTodayViewController$todayTableFooterView)(_LOGOS_SELF_TYPE_NORMAL SBTodayViewController* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$SBTodayViewController$todayTableFooterView(_LOGOS_SELF_TYPE_NORMAL SBTodayViewController* _LOGOS_SELF_CONST, SEL); static double (*_logos_orig$_ungrouped$SBBulletinViewController$tableView$heightForHeaderInSection$)(_LOGOS_SELF_TYPE_NORMAL SBBulletinViewController* _LOGOS_SELF_CONST, SEL, id, long long); static double _logos_method$_ungrouped$SBBulletinViewController$tableView$heightForHeaderInSection$(_LOGOS_SELF_TYPE_NORMAL SBBulletinViewController* _LOGOS_SELF_CONST, SEL, id, long long); 

#line 3 "Tweak.xm"

static SBNotificationSeparatorView* _logos_method$_ungrouped$SBNotificationSeparatorView$initWithFrame$mode$(_LOGOS_SELF_TYPE_INIT SBNotificationSeparatorView* __unused self, SEL __unused _cmd, CGRect arg1, long long arg2) _LOGOS_RETURN_RETAINED {
    
    return NULL;
}



static id _logos_method$_ungrouped$SBTodayViewController$todayTableHeaderView(_LOGOS_SELF_TYPE_NORMAL SBTodayViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return NULL;
}



static double _logos_method$_ungrouped$SBBulletinViewController$tableView$heightForHeaderInSection$(_LOGOS_SELF_TYPE_NORMAL SBBulletinViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, long long arg2) {
    
    return 0;
}



static id _logos_method$_ungrouped$SBTodayViewController$todayTableFooterView(_LOGOS_SELF_TYPE_NORMAL SBTodayViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return NULL;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SBNotificationSeparatorView = objc_getClass("SBNotificationSeparatorView"); { MSHookMessageEx(_logos_class$_ungrouped$SBNotificationSeparatorView, @selector(initWithFrame:mode:), (IMP)&_logos_method$_ungrouped$SBNotificationSeparatorView$initWithFrame$mode$, (IMP*)&_logos_orig$_ungrouped$SBNotificationSeparatorView$initWithFrame$mode$);}Class _logos_class$_ungrouped$SBTodayViewController = objc_getClass("SBTodayViewController"); { MSHookMessageEx(_logos_class$_ungrouped$SBTodayViewController, @selector(todayTableHeaderView), (IMP)&_logos_method$_ungrouped$SBTodayViewController$todayTableHeaderView, (IMP*)&_logos_orig$_ungrouped$SBTodayViewController$todayTableHeaderView);}{ MSHookMessageEx(_logos_class$_ungrouped$SBTodayViewController, @selector(todayTableFooterView), (IMP)&_logos_method$_ungrouped$SBTodayViewController$todayTableFooterView, (IMP*)&_logos_orig$_ungrouped$SBTodayViewController$todayTableFooterView);}Class _logos_class$_ungrouped$SBBulletinViewController = objc_getClass("SBBulletinViewController"); { MSHookMessageEx(_logos_class$_ungrouped$SBBulletinViewController, @selector(tableView:heightForHeaderInSection:), (IMP)&_logos_method$_ungrouped$SBBulletinViewController$tableView$heightForHeaderInSection$, (IMP*)&_logos_orig$_ungrouped$SBBulletinViewController$tableView$heightForHeaderInSection$);}} }
#line 31 "Tweak.xm"
