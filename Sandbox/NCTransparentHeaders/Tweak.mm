#import <UIKit/UIKit.h>

#include <substrate.h>

static long long _patched_ftt_meth_$SBNotificationCenterHeaderView$initialGraphicsQuality(id self, SEL _cmd) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBNotificationCenterHeaderView = objc_getClass("SBNotificationCenterHeaderView");
    MSHookMessageEx(_ftt_class_SBNotificationCenterHeaderView, @selector(initialGraphicsQuality), (IMP)_patched_ftt_meth_$SBNotificationCenterHeaderView$initialGraphicsQuality, NULL);
}
