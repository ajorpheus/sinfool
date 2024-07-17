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

@class CCUISettingModule; @class CCUIBluetoothSetting; @class CCUIAirplaneModeSetting; @class CCUIDoNotDisturbSetting; @class CCUIWiFiSetting; @class CCUILowPowerModeSetting; @class CCUIMuteSetting; @class CCUIAirStuffSectionController; @class CCUICellularDataSetting; @class CCUINightShiftContentView; @class CCUIPersonalHotspotSetting; @class CCUIOrientationLockSetting; 
static id (*_logos_orig$_ungrouped$CCUIAirplaneModeSetting$selectedStateColor)(_LOGOS_SELF_TYPE_NORMAL CCUIAirplaneModeSetting* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$CCUIAirplaneModeSetting$selectedStateColor(_LOGOS_SELF_TYPE_NORMAL CCUIAirplaneModeSetting* _LOGOS_SELF_CONST, SEL); static id (*_logos_orig$_ungrouped$CCUIWiFiSetting$selectedStateColor)(_LOGOS_SELF_TYPE_NORMAL CCUIWiFiSetting* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$CCUIWiFiSetting$selectedStateColor(_LOGOS_SELF_TYPE_NORMAL CCUIWiFiSetting* _LOGOS_SELF_CONST, SEL); static id (*_logos_orig$_ungrouped$CCUIBluetoothSetting$selectedStateColor)(_LOGOS_SELF_TYPE_NORMAL CCUIBluetoothSetting* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$CCUIBluetoothSetting$selectedStateColor(_LOGOS_SELF_TYPE_NORMAL CCUIBluetoothSetting* _LOGOS_SELF_CONST, SEL); static id (*_logos_orig$_ungrouped$CCUIDoNotDisturbSetting$selectedStateColor)(_LOGOS_SELF_TYPE_NORMAL CCUIDoNotDisturbSetting* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$CCUIDoNotDisturbSetting$selectedStateColor(_LOGOS_SELF_TYPE_NORMAL CCUIDoNotDisturbSetting* _LOGOS_SELF_CONST, SEL); static id (*_logos_orig$_ungrouped$CCUIMuteSetting$selectedStateColor)(_LOGOS_SELF_TYPE_NORMAL CCUIMuteSetting* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$CCUIMuteSetting$selectedStateColor(_LOGOS_SELF_TYPE_NORMAL CCUIMuteSetting* _LOGOS_SELF_CONST, SEL); static id (*_logos_orig$_ungrouped$CCUIOrientationLockSetting$selectedStateColor)(_LOGOS_SELF_TYPE_NORMAL CCUIOrientationLockSetting* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$CCUIOrientationLockSetting$selectedStateColor(_LOGOS_SELF_TYPE_NORMAL CCUIOrientationLockSetting* _LOGOS_SELF_CONST, SEL); static id (*_logos_orig$_ungrouped$CCUIAirStuffSectionController$_selectedStateColor)(_LOGOS_SELF_TYPE_NORMAL CCUIAirStuffSectionController* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$CCUIAirStuffSectionController$_selectedStateColor(_LOGOS_SELF_TYPE_NORMAL CCUIAirStuffSectionController* _LOGOS_SELF_CONST, SEL); static id (*_logos_orig$_ungrouped$CCUINightShiftContentView$_selectedStateColor)(_LOGOS_SELF_TYPE_NORMAL CCUINightShiftContentView* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$CCUINightShiftContentView$_selectedStateColor(_LOGOS_SELF_TYPE_NORMAL CCUINightShiftContentView* _LOGOS_SELF_CONST, SEL); static id (*_logos_orig$_ungrouped$CCUICellularDataSetting$selectedStateColor)(_LOGOS_SELF_TYPE_NORMAL CCUICellularDataSetting* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$CCUICellularDataSetting$selectedStateColor(_LOGOS_SELF_TYPE_NORMAL CCUICellularDataSetting* _LOGOS_SELF_CONST, SEL); static id (*_logos_orig$_ungrouped$CCUIPersonalHotspotSetting$selectedStateColor)(_LOGOS_SELF_TYPE_NORMAL CCUIPersonalHotspotSetting* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$CCUIPersonalHotspotSetting$selectedStateColor(_LOGOS_SELF_TYPE_NORMAL CCUIPersonalHotspotSetting* _LOGOS_SELF_CONST, SEL); static id (*_logos_orig$_ungrouped$CCUILowPowerModeSetting$selectedStateColor)(_LOGOS_SELF_TYPE_NORMAL CCUILowPowerModeSetting* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$CCUILowPowerModeSetting$selectedStateColor(_LOGOS_SELF_TYPE_NORMAL CCUILowPowerModeSetting* _LOGOS_SELF_CONST, SEL); static id (*_logos_orig$_ungrouped$CCUISettingModule$selectedStateColor)(_LOGOS_SELF_TYPE_NORMAL CCUISettingModule* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$CCUISettingModule$selectedStateColor(_LOGOS_SELF_TYPE_NORMAL CCUISettingModule* _LOGOS_SELF_CONST, SEL); 

#line 3 "Tweak.xm"

static id _logos_method$_ungrouped$CCUIAirplaneModeSetting$selectedStateColor(_LOGOS_SELF_TYPE_NORMAL CCUIAirplaneModeSetting* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return [UIColor colorWithRed:241/255.0 green:87/255.0 blue:43/255.0 alpha:255/255.0];
}



static id _logos_method$_ungrouped$CCUIWiFiSetting$selectedStateColor(_LOGOS_SELF_TYPE_NORMAL CCUIWiFiSetting* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return [UIColor colorWithRed:52/255.0 green:239/255.0 blue:246/255.0 alpha:255/255.0];
}



static id _logos_method$_ungrouped$CCUIBluetoothSetting$selectedStateColor(_LOGOS_SELF_TYPE_NORMAL CCUIBluetoothSetting* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return [UIColor colorWithRed:85/255.0 green:142/255.0 blue:247/255.0 alpha:255/255.0];
}



static id _logos_method$_ungrouped$CCUIDoNotDisturbSetting$selectedStateColor(_LOGOS_SELF_TYPE_NORMAL CCUIDoNotDisturbSetting* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return [UIColor colorWithRed:40/255.0 green:40/255.0 blue:208/255.0 alpha:255/255.0];
}



static id _logos_method$_ungrouped$CCUIMuteSetting$selectedStateColor(_LOGOS_SELF_TYPE_NORMAL CCUIMuteSetting* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return [UIColor colorWithRed:249/255.0 green:38/255.0 blue:107/255.0 alpha:255/255.0];
}



static id _logos_method$_ungrouped$CCUIOrientationLockSetting$selectedStateColor(_LOGOS_SELF_TYPE_NORMAL CCUIOrientationLockSetting* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return [UIColor colorWithRed:235/255.0 green:89/255.0 blue:206/255.0 alpha:255/255.0];
}



static id _logos_method$_ungrouped$CCUIAirStuffSectionController$_selectedStateColor(_LOGOS_SELF_TYPE_NORMAL CCUIAirStuffSectionController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return [UIColor colorWithRed:24/255.0 green:190/255.0 blue:11/255.0 alpha:255/255.0];
}



static id _logos_method$_ungrouped$CCUINightShiftContentView$_selectedStateColor(_LOGOS_SELF_TYPE_NORMAL CCUINightShiftContentView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return [UIColor colorWithRed:252/255.0 green:206/255.0 blue:0/255.0 alpha:255/255.0];
}



static id _logos_method$_ungrouped$CCUICellularDataSetting$selectedStateColor(_LOGOS_SELF_TYPE_NORMAL CCUICellularDataSetting* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return [UIColor colorWithRed:77/255.0 green:217/255.0 blue:100/255.0 alpha:255/255.0];
}



static id _logos_method$_ungrouped$CCUIPersonalHotspotSetting$selectedStateColor(_LOGOS_SELF_TYPE_NORMAL CCUIPersonalHotspotSetting* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return [UIColor colorWithRed:0/255.0 green:122/255.0 blue:255/255.0 alpha:255/255.0];
}



static id _logos_method$_ungrouped$CCUILowPowerModeSetting$selectedStateColor(_LOGOS_SELF_TYPE_NORMAL CCUILowPowerModeSetting* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return [UIColor colorWithRed:255/255.0 green:204/255.0 blue:0/255.0 alpha:255/255.0];
}



static id _logos_method$_ungrouped$CCUISettingModule$selectedStateColor(_LOGOS_SELF_TYPE_NORMAL CCUISettingModule* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return [UIColor colorWithRed:142/255.0 green:142/255.0 blue:147/255.0 alpha:255/255.0];
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$CCUIAirplaneModeSetting = objc_getClass("CCUIAirplaneModeSetting"); { MSHookMessageEx(_logos_class$_ungrouped$CCUIAirplaneModeSetting, @selector(selectedStateColor), (IMP)&_logos_method$_ungrouped$CCUIAirplaneModeSetting$selectedStateColor, (IMP*)&_logos_orig$_ungrouped$CCUIAirplaneModeSetting$selectedStateColor);}Class _logos_class$_ungrouped$CCUIWiFiSetting = objc_getClass("CCUIWiFiSetting"); { MSHookMessageEx(_logos_class$_ungrouped$CCUIWiFiSetting, @selector(selectedStateColor), (IMP)&_logos_method$_ungrouped$CCUIWiFiSetting$selectedStateColor, (IMP*)&_logos_orig$_ungrouped$CCUIWiFiSetting$selectedStateColor);}Class _logos_class$_ungrouped$CCUIBluetoothSetting = objc_getClass("CCUIBluetoothSetting"); { MSHookMessageEx(_logos_class$_ungrouped$CCUIBluetoothSetting, @selector(selectedStateColor), (IMP)&_logos_method$_ungrouped$CCUIBluetoothSetting$selectedStateColor, (IMP*)&_logos_orig$_ungrouped$CCUIBluetoothSetting$selectedStateColor);}Class _logos_class$_ungrouped$CCUIDoNotDisturbSetting = objc_getClass("CCUIDoNotDisturbSetting"); { MSHookMessageEx(_logos_class$_ungrouped$CCUIDoNotDisturbSetting, @selector(selectedStateColor), (IMP)&_logos_method$_ungrouped$CCUIDoNotDisturbSetting$selectedStateColor, (IMP*)&_logos_orig$_ungrouped$CCUIDoNotDisturbSetting$selectedStateColor);}Class _logos_class$_ungrouped$CCUIMuteSetting = objc_getClass("CCUIMuteSetting"); { MSHookMessageEx(_logos_class$_ungrouped$CCUIMuteSetting, @selector(selectedStateColor), (IMP)&_logos_method$_ungrouped$CCUIMuteSetting$selectedStateColor, (IMP*)&_logos_orig$_ungrouped$CCUIMuteSetting$selectedStateColor);}Class _logos_class$_ungrouped$CCUIOrientationLockSetting = objc_getClass("CCUIOrientationLockSetting"); { MSHookMessageEx(_logos_class$_ungrouped$CCUIOrientationLockSetting, @selector(selectedStateColor), (IMP)&_logos_method$_ungrouped$CCUIOrientationLockSetting$selectedStateColor, (IMP*)&_logos_orig$_ungrouped$CCUIOrientationLockSetting$selectedStateColor);}Class _logos_class$_ungrouped$CCUIAirStuffSectionController = objc_getClass("CCUIAirStuffSectionController"); { MSHookMessageEx(_logos_class$_ungrouped$CCUIAirStuffSectionController, @selector(_selectedStateColor), (IMP)&_logos_method$_ungrouped$CCUIAirStuffSectionController$_selectedStateColor, (IMP*)&_logos_orig$_ungrouped$CCUIAirStuffSectionController$_selectedStateColor);}Class _logos_class$_ungrouped$CCUINightShiftContentView = objc_getClass("CCUINightShiftContentView"); { MSHookMessageEx(_logos_class$_ungrouped$CCUINightShiftContentView, @selector(_selectedStateColor), (IMP)&_logos_method$_ungrouped$CCUINightShiftContentView$_selectedStateColor, (IMP*)&_logos_orig$_ungrouped$CCUINightShiftContentView$_selectedStateColor);}Class _logos_class$_ungrouped$CCUICellularDataSetting = objc_getClass("CCUICellularDataSetting"); { MSHookMessageEx(_logos_class$_ungrouped$CCUICellularDataSetting, @selector(selectedStateColor), (IMP)&_logos_method$_ungrouped$CCUICellularDataSetting$selectedStateColor, (IMP*)&_logos_orig$_ungrouped$CCUICellularDataSetting$selectedStateColor);}Class _logos_class$_ungrouped$CCUIPersonalHotspotSetting = objc_getClass("CCUIPersonalHotspotSetting"); { MSHookMessageEx(_logos_class$_ungrouped$CCUIPersonalHotspotSetting, @selector(selectedStateColor), (IMP)&_logos_method$_ungrouped$CCUIPersonalHotspotSetting$selectedStateColor, (IMP*)&_logos_orig$_ungrouped$CCUIPersonalHotspotSetting$selectedStateColor);}Class _logos_class$_ungrouped$CCUILowPowerModeSetting = objc_getClass("CCUILowPowerModeSetting"); { MSHookMessageEx(_logos_class$_ungrouped$CCUILowPowerModeSetting, @selector(selectedStateColor), (IMP)&_logos_method$_ungrouped$CCUILowPowerModeSetting$selectedStateColor, (IMP*)&_logos_orig$_ungrouped$CCUILowPowerModeSetting$selectedStateColor);}Class _logos_class$_ungrouped$CCUISettingModule = objc_getClass("CCUISettingModule"); { MSHookMessageEx(_logos_class$_ungrouped$CCUISettingModule, @selector(selectedStateColor), (IMP)&_logos_method$_ungrouped$CCUISettingModule$selectedStateColor, (IMP*)&_logos_orig$_ungrouped$CCUISettingModule$selectedStateColor);}} }
#line 87 "Tweak.xm"
