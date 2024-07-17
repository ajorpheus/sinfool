#import <UIKit/UIKit.h>

%hook SBUIController
- (bool)isConnectedToExternalChargingSource {
    // Always Show % Charged Text & Battery When Disconnecting
    return 1;
}
%end

%hook SBLockScreenViewController
- (void)_addBatteryChargingViewAndShowBattery:(bool)arg1 {
    arg1 = 1;
    %orig;
}
%end

