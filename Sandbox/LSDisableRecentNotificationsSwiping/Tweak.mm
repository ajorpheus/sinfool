#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$SBDashBoardCombinedListViewController$notificationListViewControllerShouldAllowRecentNotificationsReveal$(id self, SEL _cmd, id arg1) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBDashBoardCombinedListViewController = objc_getClass("SBDashBoardCombinedListViewController");
    MSHookMessageEx(_ftt_class_SBDashBoardCombinedListViewController, @selector(notificationListViewControllerShouldAllowRecentNotificationsReveal:), (IMP)_patched_ftt_meth_$SBDashBoardCombinedListViewController$notificationListViewControllerShouldAllowRecentNotificationsReveal$, NULL);
}
