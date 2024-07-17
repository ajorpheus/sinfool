#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$_SBLockScreenSingleBatteryChargingView$setBatteryVisible$)(id, SEL, bool);
static void _patched_ftt_meth_$_SBLockScreenSingleBatteryChargingView$setBatteryVisible$(id self, SEL _cmd, bool arg1) {
    arg1 = 0;
    _orig_ftt_meth_$_SBLockScreenSingleBatteryChargingView$setBatteryVisible$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class__SBLockScreenSingleBatteryChargingView = objc_getClass("_SBLockScreenSingleBatteryChargingView");
    MSHookMessageEx(_ftt_class__SBLockScreenSingleBatteryChargingView, @selector(setBatteryVisible:), (IMP)_patched_ftt_meth_$_SBLockScreenSingleBatteryChargingView$setBatteryVisible$, (IMP *)_orig_ftt_meth_$_SBLockScreenSingleBatteryChargingView$setBatteryVisible$);
}
