#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$SBWiFiManager$isAssociatedToIOSHotspot(id self, SEL _cmd) {
    return 0;
}

static int _patched_ftt_meth_$SBTelephonyManager$dataConnectionType(id self, SEL _cmd) {
    return 9;
}

static int _patched_ftt_meth_$SBWiFiManager$signalStrengthBars(id self, SEL _cmd) {
    return 3;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBWiFiManager = objc_getClass("SBWiFiManager");
    MSHookMessageEx(_ftt_class_SBWiFiManager, @selector(isAssociatedToIOSHotspot), (IMP)_patched_ftt_meth_$SBWiFiManager$isAssociatedToIOSHotspot, NULL);
    Class _ftt_class_SBTelephonyManager = objc_getClass("SBTelephonyManager");
    MSHookMessageEx(_ftt_class_SBTelephonyManager, @selector(dataConnectionType), (IMP)_patched_ftt_meth_$SBTelephonyManager$dataConnectionType, NULL);
    MSHookMessageEx(_ftt_class_SBWiFiManager, @selector(signalStrengthBars), (IMP)_patched_ftt_meth_$SBWiFiManager$signalStrengthBars, NULL);
}
