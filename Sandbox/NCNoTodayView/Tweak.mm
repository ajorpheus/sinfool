#import <UIKit/UIKit.h>

#include <substrate.h>

static unsigned long long _patched_ftt_meth_$SBSearchEtceteraLayoutView$_indexOfNotificationsPageView(id self, SEL _cmd) {
    return 1;
}

static bool _patched_ftt_meth_$SBSearchEtceteraLayoutView$_shouldAllowScrollingForStyle$(id self, SEL _cmd, unsigned long long arg1) {
    return 0;
}

static bool _patched_ftt_meth_$SBNotificationCenterWithSearchViewController$showPageControl(id self, SEL _cmd) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBSearchEtceteraLayoutView = objc_getClass("SBSearchEtceteraLayoutView");
    MSHookMessageEx(_ftt_class_SBSearchEtceteraLayoutView, @selector(_indexOfNotificationsPageView), (IMP)_patched_ftt_meth_$SBSearchEtceteraLayoutView$_indexOfNotificationsPageView, NULL);
    MSHookMessageEx(_ftt_class_SBSearchEtceteraLayoutView, @selector(_shouldAllowScrollingForStyle:), (IMP)_patched_ftt_meth_$SBSearchEtceteraLayoutView$_shouldAllowScrollingForStyle$, NULL);
    Class _ftt_class_SBNotificationCenterWithSearchViewController = objc_getClass("SBNotificationCenterWithSearchViewController");
    MSHookMessageEx(_ftt_class_SBNotificationCenterWithSearchViewController, @selector(showPageControl), (IMP)_patched_ftt_meth_$SBNotificationCenterWithSearchViewController$showPageControl, NULL);
}
