#import <UIKit/UIKit.h>

%hook SBLockScreenBatteryChargingView
- (void)_setChargeString:(id)arg1 {
    // Change me... (or hide=pass-through)
    arg1 = @"🔌";
    %orig;
}
%end

