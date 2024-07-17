#import <UIKit/UIKit.h>

#include <substrate.h>

static long long _patched_ftt_meth_$SBNotificationCenterViewController$_defaultBackdropViewStyle(id self, SEL _cmd) {
    return 1;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBNotificationCenterViewController = objc_getClass("SBNotificationCenterViewController");
    MSHookMessageEx(_ftt_class_SBNotificationCenterViewController, @selector(_defaultBackdropViewStyle), (IMP)_patched_ftt_meth_$SBNotificationCenterViewController$_defaultBackdropViewStyle, NULL);
}
