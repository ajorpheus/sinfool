#import <UIKit/UIKit.h>

#include <substrate.h>

static id _patched_ftt_meth_$SBLockScreenBatteryChargingView$_updateChargeString$oldLabel$(id self, SEL _cmd, id arg1, id arg2) {
    return NULL;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBLockScreenBatteryChargingView = objc_getClass("SBLockScreenBatteryChargingView");
    MSHookMessageEx(_ftt_class_SBLockScreenBatteryChargingView, @selector(_updateChargeString:oldLabel:), (IMP)_patched_ftt_meth_$SBLockScreenBatteryChargingView$_updateChargeString$oldLabel$, NULL);
}
