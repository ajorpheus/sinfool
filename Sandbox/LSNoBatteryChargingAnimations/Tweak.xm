#import <UIKit/UIKit.h>

%hook SBDashBoardViewController
- (void)_transitionChargingViewToVisible:(bool)arg1 showBattery:(bool)arg2 animated:(bool)arg3 {
}
%end

