#import <UIKit/UIKit.h>

#include <substrate.h>

static id _patched_ftt_meth_$CCUIAirplaneModeSetting$selectedStateColor(id self, SEL _cmd) {
    // Airplane
    return [UIColor colorWithRed:241/255.0 green:87/255.0 blue:43/255.0 alpha:255/255.0];
}

static id _patched_ftt_meth_$CCUIWiFiSetting$selectedStateColor(id self, SEL _cmd) {
    // WiFi
    return [UIColor colorWithRed:52/255.0 green:239/255.0 blue:246/255.0 alpha:255/255.0];
}

static id _patched_ftt_meth_$CCUIBluetoothSetting$selectedStateColor(id self, SEL _cmd) {
    // Bluetooth
    return [UIColor colorWithRed:85/255.0 green:142/255.0 blue:247/255.0 alpha:255/255.0];
}

static id _patched_ftt_meth_$CCUIDoNotDisturbSetting$selectedStateColor(id self, SEL _cmd) {
    // Do Not Disturb
    return [UIColor colorWithRed:40/255.0 green:40/255.0 blue:208/255.0 alpha:255/255.0];
}

static id _patched_ftt_meth_$CCUIMuteSetting$selectedStateColor(id self, SEL _cmd) {
    // Mute
    return [UIColor colorWithRed:249/255.0 green:38/255.0 blue:107/255.0 alpha:255/255.0];
}

static id _patched_ftt_meth_$CCUIOrientationLockSetting$selectedStateColor(id self, SEL _cmd) {
    // Orientation Lock
    return [UIColor colorWithRed:235/255.0 green:89/255.0 blue:206/255.0 alpha:255/255.0];
}

static id _patched_ftt_meth_$CCUIAirStuffSectionController$_selectedStateColor(id self, SEL _cmd) {
    // AirPlay Mirroring & AirDrop Glyph
    return [UIColor colorWithRed:24/255.0 green:190/255.0 blue:11/255.0 alpha:255/255.0];
}

static id _patched_ftt_meth_$CCUINightShiftContentView$_selectedStateColor(id self, SEL _cmd) {
    // Night Shift Glyph
    return [UIColor colorWithRed:252/255.0 green:206/255.0 blue:0/255.0 alpha:255/255.0];
}

static id _patched_ftt_meth_$CCUICellularDataSetting$selectedStateColor(id self, SEL _cmd) {
    // Cellular Data
    return [UIColor colorWithRed:77/255.0 green:217/255.0 blue:100/255.0 alpha:255/255.0];
}

static id _patched_ftt_meth_$CCUIPersonalHotspotSetting$selectedStateColor(id self, SEL _cmd) {
    // Personal Hotspot
    return [UIColor colorWithRed:0/255.0 green:122/255.0 blue:255/255.0 alpha:255/255.0];
}

static id _patched_ftt_meth_$CCUILowPowerModeSetting$selectedStateColor(id self, SEL _cmd) {
    // Low Power Mode
    return [UIColor colorWithRed:255/255.0 green:204/255.0 blue:0/255.0 alpha:255/255.0];
}

static id _patched_ftt_meth_$CCUISettingModule$selectedStateColor(id self, SEL _cmd) {
    // Setting Module
    return [UIColor colorWithRed:142/255.0 green:142/255.0 blue:147/255.0 alpha:255/255.0];
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_CCUIAirplaneModeSetting = objc_getClass("CCUIAirplaneModeSetting");
    MSHookMessageEx(_ftt_class_CCUIAirplaneModeSetting, @selector(selectedStateColor), (IMP)_patched_ftt_meth_$CCUIAirplaneModeSetting$selectedStateColor, NULL);
    Class _ftt_class_CCUIWiFiSetting = objc_getClass("CCUIWiFiSetting");
    MSHookMessageEx(_ftt_class_CCUIWiFiSetting, @selector(selectedStateColor), (IMP)_patched_ftt_meth_$CCUIWiFiSetting$selectedStateColor, NULL);
    Class _ftt_class_CCUIBluetoothSetting = objc_getClass("CCUIBluetoothSetting");
    MSHookMessageEx(_ftt_class_CCUIBluetoothSetting, @selector(selectedStateColor), (IMP)_patched_ftt_meth_$CCUIBluetoothSetting$selectedStateColor, NULL);
    Class _ftt_class_CCUIDoNotDisturbSetting = objc_getClass("CCUIDoNotDisturbSetting");
    MSHookMessageEx(_ftt_class_CCUIDoNotDisturbSetting, @selector(selectedStateColor), (IMP)_patched_ftt_meth_$CCUIDoNotDisturbSetting$selectedStateColor, NULL);
    Class _ftt_class_CCUIMuteSetting = objc_getClass("CCUIMuteSetting");
    MSHookMessageEx(_ftt_class_CCUIMuteSetting, @selector(selectedStateColor), (IMP)_patched_ftt_meth_$CCUIMuteSetting$selectedStateColor, NULL);
    Class _ftt_class_CCUIOrientationLockSetting = objc_getClass("CCUIOrientationLockSetting");
    MSHookMessageEx(_ftt_class_CCUIOrientationLockSetting, @selector(selectedStateColor), (IMP)_patched_ftt_meth_$CCUIOrientationLockSetting$selectedStateColor, NULL);
    Class _ftt_class_CCUIAirStuffSectionController = objc_getClass("CCUIAirStuffSectionController");
    MSHookMessageEx(_ftt_class_CCUIAirStuffSectionController, @selector(_selectedStateColor), (IMP)_patched_ftt_meth_$CCUIAirStuffSectionController$_selectedStateColor, NULL);
    Class _ftt_class_CCUINightShiftContentView = objc_getClass("CCUINightShiftContentView");
    MSHookMessageEx(_ftt_class_CCUINightShiftContentView, @selector(_selectedStateColor), (IMP)_patched_ftt_meth_$CCUINightShiftContentView$_selectedStateColor, NULL);
    Class _ftt_class_CCUICellularDataSetting = objc_getClass("CCUICellularDataSetting");
    MSHookMessageEx(_ftt_class_CCUICellularDataSetting, @selector(selectedStateColor), (IMP)_patched_ftt_meth_$CCUICellularDataSetting$selectedStateColor, NULL);
    Class _ftt_class_CCUIPersonalHotspotSetting = objc_getClass("CCUIPersonalHotspotSetting");
    MSHookMessageEx(_ftt_class_CCUIPersonalHotspotSetting, @selector(selectedStateColor), (IMP)_patched_ftt_meth_$CCUIPersonalHotspotSetting$selectedStateColor, NULL);
    Class _ftt_class_CCUILowPowerModeSetting = objc_getClass("CCUILowPowerModeSetting");
    MSHookMessageEx(_ftt_class_CCUILowPowerModeSetting, @selector(selectedStateColor), (IMP)_patched_ftt_meth_$CCUILowPowerModeSetting$selectedStateColor, NULL);
    Class _ftt_class_CCUISettingModule = objc_getClass("CCUISettingModule");
    MSHookMessageEx(_ftt_class_CCUISettingModule, @selector(selectedStateColor), (IMP)_patched_ftt_meth_$CCUISettingModule$selectedStateColor, NULL);
}
