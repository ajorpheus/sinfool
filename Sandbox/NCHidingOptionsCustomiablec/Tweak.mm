#import <UIKit/UIKit.h>

#include <substrate.h>

static id _patched_ftt_meth_$SBNotificationSeparatorView$initWithFrame$mode$(id self, SEL _cmd, CGRect arg1, long long arg2) {
    // Top & Bottom Separator
    return NULL;
}

static id _patched_ftt_meth_$SBTodayViewController$todayTableHeaderView(id self, SEL _cmd) {
    // Today's Date
    return NULL;
}

static double _patched_ftt_meth_$SBBulletinViewController$tableView$heightForHeaderInSection$(id self, SEL _cmd, id arg1, long long arg2) {
    // Headers
    return 0;
}

static id _patched_ftt_meth_$SBTodayViewController$todayTableFooterView(id self, SEL _cmd) {
    // Weather/Stocks™ Footer
    return NULL;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBNotificationSeparatorView = objc_getClass("SBNotificationSeparatorView");
    MSHookMessageEx(_ftt_class_SBNotificationSeparatorView, @selector(initWithFrame:mode:), (IMP)_patched_ftt_meth_$SBNotificationSeparatorView$initWithFrame$mode$, NULL);
    Class _ftt_class_SBTodayViewController = objc_getClass("SBTodayViewController");
    MSHookMessageEx(_ftt_class_SBTodayViewController, @selector(todayTableHeaderView), (IMP)_patched_ftt_meth_$SBTodayViewController$todayTableHeaderView, NULL);
    Class _ftt_class_SBBulletinViewController = objc_getClass("SBBulletinViewController");
    MSHookMessageEx(_ftt_class_SBBulletinViewController, @selector(tableView:heightForHeaderInSection:), (IMP)_patched_ftt_meth_$SBBulletinViewController$tableView$heightForHeaderInSection$, NULL);
    MSHookMessageEx(_ftt_class_SBTodayViewController, @selector(todayTableFooterView), (IMP)_patched_ftt_meth_$SBTodayViewController$todayTableFooterView, NULL);
}
