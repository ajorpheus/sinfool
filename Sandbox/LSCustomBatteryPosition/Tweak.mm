#import <UIKit/UIKit.h>

#include <substrate.h>

static float _patched_ftt_meth_$_SBLockScreenSingleBatteryChargingView$_batteryBaseline(id self, SEL _cmd) {
    // Battery "Y" Position
    return 290;
}

static BOOL _patched_ftt_meth_$SBLockScreenViewController$_shouldShowChargingText(id self, SEL _cmd) {
    // Show Charging Text Under Clock
    return 0;
}

static float _patched_ftt_meth_$_SBLockScreenSingleBatteryChargingView$_chargingTextBaselineOffset(id self, SEL _cmd) {
    // Charging Text "Y" Position
    return 320;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class__SBLockScreenSingleBatteryChargingView = objc_getClass("_SBLockScreenSingleBatteryChargingView");
    MSHookMessageEx(_ftt_class__SBLockScreenSingleBatteryChargingView, @selector(_batteryBaseline), (IMP)_patched_ftt_meth_$_SBLockScreenSingleBatteryChargingView$_batteryBaseline, NULL);
    Class _ftt_class_SBLockScreenViewController = objc_getClass("SBLockScreenViewController");
    MSHookMessageEx(_ftt_class_SBLockScreenViewController, @selector(_shouldShowChargingText), (IMP)_patched_ftt_meth_$SBLockScreenViewController$_shouldShowChargingText, NULL);
    MSHookMessageEx(_ftt_class__SBLockScreenSingleBatteryChargingView, @selector(_chargingTextBaselineOffset), (IMP)_patched_ftt_meth_$_SBLockScreenSingleBatteryChargingView$_chargingTextBaselineOffset, NULL);
}
