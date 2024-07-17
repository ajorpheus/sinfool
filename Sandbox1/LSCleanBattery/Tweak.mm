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

@class SBLockScreenBatteryFillView; 
static SBLockScreenBatteryFillView* (*_logos_orig$_ungrouped$SBLockScreenBatteryFillView$initWithFrame$isInternalBattery$lowBatteryLevel$)(_LOGOS_SELF_TYPE_INIT SBLockScreenBatteryFillView*, SEL, CGRect, bool, long long) _LOGOS_RETURN_RETAINED; static SBLockScreenBatteryFillView* _logos_method$_ungrouped$SBLockScreenBatteryFillView$initWithFrame$isInternalBattery$lowBatteryLevel$(_LOGOS_SELF_TYPE_INIT SBLockScreenBatteryFillView*, SEL, CGRect, bool, long long) _LOGOS_RETURN_RETAINED; 

#line 3 "Tweak.xm"

static SBLockScreenBatteryFillView* _logos_method$_ungrouped$SBLockScreenBatteryFillView$initWithFrame$isInternalBattery$lowBatteryLevel$(_LOGOS_SELF_TYPE_INIT SBLockScreenBatteryFillView* __unused self, SEL __unused _cmd, CGRect arg1, bool arg2, long long arg3) _LOGOS_RETURN_RETAINED {
    return NULL;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SBLockScreenBatteryFillView = objc_getClass("SBLockScreenBatteryFillView"); { MSHookMessageEx(_logos_class$_ungrouped$SBLockScreenBatteryFillView, @selector(initWithFrame:isInternalBattery:lowBatteryLevel:), (IMP)&_logos_method$_ungrouped$SBLockScreenBatteryFillView$initWithFrame$isInternalBattery$lowBatteryLevel$, (IMP*)&_logos_orig$_ungrouped$SBLockScreenBatteryFillView$initWithFrame$isInternalBattery$lowBatteryLevel$);}} }
#line 9 "Tweak.xm"
