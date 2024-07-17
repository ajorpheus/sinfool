#import <UIKit/UIKit.h>

%hook CCUIAirplaneModeSetting
- (id)selectedStateColor {
    // Airplane
    return [UIColor colorWithRed:241/255.0 green:87/255.0 blue:43/255.0 alpha:255/255.0];
}
%end

%hook CCUIWiFiSetting
- (id)selectedStateColor {
    // WiFi
    return [UIColor colorWithRed:52/255.0 green:239/255.0 blue:246/255.0 alpha:255/255.0];
}
%end

%hook CCUIBluetoothSetting
- (id)selectedStateColor {
    // Bluetooth
    return [UIColor colorWithRed:85/255.0 green:142/255.0 blue:247/255.0 alpha:255/255.0];
}
%end

%hook CCUIDoNotDisturbSetting
- (id)selectedStateColor {
    // Do Not Disturb
    return [UIColor colorWithRed:40/255.0 green:40/255.0 blue:208/255.0 alpha:255/255.0];
}
%end

%hook CCUIMuteSetting
- (id)selectedStateColor {
    // Mute
    return [UIColor colorWithRed:249/255.0 green:38/255.0 blue:107/255.0 alpha:255/255.0];
}
%end

%hook CCUIOrientationLockSetting
- (id)selectedStateColor {
    // Orientation Lock
    return [UIColor colorWithRed:235/255.0 green:89/255.0 blue:206/255.0 alpha:255/255.0];
}
%end

%hook CCUIAirStuffSectionController
- (id)_selectedStateColor {
    // AirPlay Mirroring & AirDrop Glyph
    return [UIColor colorWithRed:24/255.0 green:190/255.0 blue:11/255.0 alpha:255/255.0];
}
%end

%hook CCUINightShiftContentView
- (id)_selectedStateColor {
    // Night Shift Glyph
    return [UIColor colorWithRed:252/255.0 green:206/255.0 blue:0/255.0 alpha:255/255.0];
}
%end

%hook CCUICellularDataSetting
- (id)selectedStateColor {
    // Cellular Data
    return [UIColor colorWithRed:77/255.0 green:217/255.0 blue:100/255.0 alpha:255/255.0];
}
%end

%hook CCUIPersonalHotspotSetting
- (id)selectedStateColor {
    // Personal Hotspot
    return [UIColor colorWithRed:0/255.0 green:122/255.0 blue:255/255.0 alpha:255/255.0];
}
%end

%hook CCUILowPowerModeSetting
- (id)selectedStateColor {
    // Low Power Mode
    return [UIColor colorWithRed:255/255.0 green:204/255.0 blue:0/255.0 alpha:255/255.0];
}
%end

%hook CCUISettingModule
- (id)selectedStateColor {
    // Setting Module
    return [UIColor colorWithRed:142/255.0 green:142/255.0 blue:147/255.0 alpha:255/255.0];
}
%end

