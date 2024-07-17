#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$SBNotificationCenterWithSearchViewController$showPageControl(id self, SEL _cmd) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBNotificationCenterWithSearchViewController = objc_getClass("SBNotificationCenterWithSearchViewController");
    MSHookMessageEx(_ftt_class_SBNotificationCenterWithSearchViewController, @selector(showPageControl), (IMP)_patched_ftt_meth_$SBNotificationCenterWithSearchViewController$showPageControl, NULL);
}
