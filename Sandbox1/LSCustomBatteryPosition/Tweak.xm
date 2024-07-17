#import <UIKit/UIKit.h>

%hook _SBLockScreenSingleBatteryChargingView
- (float)_batteryBaseline {
    // Battery "Y" Position
    return 290;
}
%end

%hook SBLockScreenViewController
- (BOOL)_shouldShowChargingText {
    // Show Charging Text Under Clock
    return 0;
}
%end

%hook _SBLockScreenSingleBatteryChargingView
- (float)_chargingTextBaselineOffset {
    // Charging Text "Y" Position
    return 320;
}
%end

