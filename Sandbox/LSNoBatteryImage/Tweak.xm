#import <UIKit/UIKit.h>

%hook _SBLockScreenSingleBatteryChargingView
- (void)setBatteryVisible:(bool)arg1 {
    arg1 = 0;
    %orig;
}
%end

