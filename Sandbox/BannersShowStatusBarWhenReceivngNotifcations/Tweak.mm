#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$SBNotificationBannerDestination$_setStatusBarsHidden$withDuration$)(id, SEL, bool, double);
static void _patched_ftt_meth_$SBNotificationBannerDestination$_setStatusBarsHidden$withDuration$(id self, SEL _cmd, bool arg1, double arg2) {
    arg1 = 0;
    _orig_ftt_meth_$SBNotificationBannerDestination$_setStatusBarsHidden$withDuration$(self, _cmd, arg1, arg2);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBNotificationBannerDestination = objc_getClass("SBNotificationBannerDestination");
    MSHookMessageEx(_ftt_class_SBNotificationBannerDestination, @selector(_setStatusBarsHidden:withDuration:), (IMP)_patched_ftt_meth_$SBNotificationBannerDestination$_setStatusBarsHidden$withDuration$, (IMP *)_orig_ftt_meth_$SBNotificationBannerDestination$_setStatusBarsHidden$withDuration$);
}
