#import <UIKit/UIKit.h>

#include <substrate.h>

static id _patched_ftt_meth_$SBLockScreenBatteryFillView$initWithFrame$isInternalBattery$lowBatteryLevel$(id self, SEL _cmd, CGRect arg1, bool arg2, long long arg3) {
    return NULL;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBLockScreenBatteryFillView = objc_getClass("SBLockScreenBatteryFillView");
    MSHookMessageEx(_ftt_class_SBLockScreenBatteryFillView, @selector(initWithFrame:isInternalBattery:lowBatteryLevel:), (IMP)_patched_ftt_meth_$SBLockScreenBatteryFillView$initWithFrame$isInternalBattery$lowBatteryLevel$, NULL);
}
