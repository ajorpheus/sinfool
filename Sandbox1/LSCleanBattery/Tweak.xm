#import <UIKit/UIKit.h>

%hook SBLockScreenBatteryFillView
- (id)initWithFrame:(CGRect)arg1 isInternalBattery:(bool)arg2 lowBatteryLevel:(long long)arg3 {
    return NULL;
}
%end

