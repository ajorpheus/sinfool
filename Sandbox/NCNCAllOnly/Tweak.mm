#import <UIKit/UIKit.h>

#include <substrate.h>

static double _patched_ftt_meth_$SBModeViewController$_headerViewHeightForMode$(id self, SEL _cmd, long long arg1) {
    // Hides Tabs
    return 0;
}

static bool _patched_ftt_meth_$SBNotificationCenterLayoutViewController$_areWidgetViewControllersAvailable(id self, SEL _cmd) {
    // Show Today View
    return 0;
}

static bool _patched_ftt_meth_$SBNotificationCenterLayoutViewController$_areNotificationsViewControllersAvailable(id self, SEL _cmd) {
    // Show Notifications View
    return 1;
}

static id _patched_ftt_meth_$SBNotificationSeparatorView$initWithFrame$mode$(id self, SEL _cmd, CGRect arg1, long long arg2) {
    // Show Top & Bottom Separator
    return NULL;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBModeViewController = objc_getClass("SBModeViewController");
    MSHookMessageEx(_ftt_class_SBModeViewController, @selector(_headerViewHeightForMode:), (IMP)_patched_ftt_meth_$SBModeViewController$_headerViewHeightForMode$, NULL);
    Class _ftt_class_SBNotificationCenterLayoutViewController = objc_getClass("SBNotificationCenterLayoutViewController");
    MSHookMessageEx(_ftt_class_SBNotificationCenterLayoutViewController, @selector(_areWidgetViewControllersAvailable), (IMP)_patched_ftt_meth_$SBNotificationCenterLayoutViewController$_areWidgetViewControllersAvailable, NULL);
    MSHookMessageEx(_ftt_class_SBNotificationCenterLayoutViewController, @selector(_areNotificationsViewControllersAvailable), (IMP)_patched_ftt_meth_$SBNotificationCenterLayoutViewController$_areNotificationsViewControllersAvailable, NULL);
    Class _ftt_class_SBNotificationSeparatorView = objc_getClass("SBNotificationSeparatorView");
    MSHookMessageEx(_ftt_class_SBNotificationSeparatorView, @selector(initWithFrame:mode:), (IMP)_patched_ftt_meth_$SBNotificationSeparatorView$initWithFrame$mode$, NULL);
}
