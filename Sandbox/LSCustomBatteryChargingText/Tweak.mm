#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$SBLockScreenBatteryChargingView$_setChargeString$)(id, SEL, id);
static void _patched_ftt_meth_$SBLockScreenBatteryChargingView$_setChargeString$(id self, SEL _cmd, id arg1) {
    // Change me... (or hide=pass-through)
    arg1 = @"🔌";
    _orig_ftt_meth_$SBLockScreenBatteryChargingView$_setChargeString$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBLockScreenBatteryChargingView = objc_getClass("SBLockScreenBatteryChargingView");
    MSHookMessageEx(_ftt_class_SBLockScreenBatteryChargingView, @selector(_setChargeString:), (IMP)_patched_ftt_meth_$SBLockScreenBatteryChargingView$_setChargeString$, (IMP *)_orig_ftt_meth_$SBLockScreenBatteryChargingView$_setChargeString$);
}
