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

@class SBNotificationBannerDestination; 
static void (*_logos_orig$_ungrouped$SBNotificationBannerDestination$_setStatusBarsHidden$withDuration$)(_LOGOS_SELF_TYPE_NORMAL SBNotificationBannerDestination* _LOGOS_SELF_CONST, SEL, bool, double); static void _logos_method$_ungrouped$SBNotificationBannerDestination$_setStatusBarsHidden$withDuration$(_LOGOS_SELF_TYPE_NORMAL SBNotificationBannerDestination* _LOGOS_SELF_CONST, SEL, bool, double); 

#line 3 "Tweak.xm"

static void _logos_method$_ungrouped$SBNotificationBannerDestination$_setStatusBarsHidden$withDuration$(_LOGOS_SELF_TYPE_NORMAL SBNotificationBannerDestination* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, bool arg1, double arg2) {
    arg1 = 0;
    _logos_orig$_ungrouped$SBNotificationBannerDestination$_setStatusBarsHidden$withDuration$(self, _cmd, arg1, arg2);
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SBNotificationBannerDestination = objc_getClass("SBNotificationBannerDestination"); { MSHookMessageEx(_logos_class$_ungrouped$SBNotificationBannerDestination, @selector(_setStatusBarsHidden:withDuration:), (IMP)&_logos_method$_ungrouped$SBNotificationBannerDestination$_setStatusBarsHidden$withDuration$, (IMP*)&_logos_orig$_ungrouped$SBNotificationBannerDestination$_setStatusBarsHidden$withDuration$);}} }
#line 10 "Tweak.xm"
