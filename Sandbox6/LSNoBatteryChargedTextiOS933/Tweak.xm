#import <UIKit/UIKit.h>

%hook SBLockScreenBatteryChargingView
- (id)_updateChargeString:(id)arg1 oldLabel:(id)arg2 {
    return NULL;
}
%end

