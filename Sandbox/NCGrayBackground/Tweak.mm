#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$SBNotificationCenterViewController$blursBackground(id self, SEL _cmd) {
    // •
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBNotificationCenterViewController = objc_getClass("SBNotificationCenterViewController");
    MSHookMessageEx(_ftt_class_SBNotificationCenterViewController, @selector(blursBackground), (IMP)_patched_ftt_meth_$SBNotificationCenterViewController$blursBackground, NULL);
}
