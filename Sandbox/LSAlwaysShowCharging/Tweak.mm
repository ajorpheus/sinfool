#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$SBUIController$isConnectedToExternalChargingSource(id self, SEL _cmd) {
    // Always Show % Charged Text & Battery When Disconnecting
    return 1;
}

static void (*_orig_ftt_meth_$SBLockScreenViewController$_addBatteryChargingViewAndShowBattery$)(id, SEL, bool);
static void _patched_ftt_meth_$SBLockScreenViewController$_addBatteryChargingViewAndShowBattery$(id self, SEL _cmd, bool arg1) {
    arg1 = 1;
    _orig_ftt_meth_$SBLockScreenViewController$_addBatteryChargingViewAndShowBattery$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBUIController = objc_getClass("SBUIController");
    MSHookMessageEx(_ftt_class_SBUIController, @selector(isConnectedToExternalChargingSource), (IMP)_patched_ftt_meth_$SBUIController$isConnectedToExternalChargingSource, NULL);
    Class _ftt_class_SBLockScreenViewController = objc_getClass("SBLockScreenViewController");
    MSHookMessageEx(_ftt_class_SBLockScreenViewController, @selector(_addBatteryChargingViewAndShowBattery:), (IMP)_patched_ftt_meth_$SBLockScreenViewController$_addBatteryChargingViewAndShowBattery$, (IMP *)_orig_ftt_meth_$SBLockScreenViewController$_addBatteryChargingViewAndShowBattery$);
}
