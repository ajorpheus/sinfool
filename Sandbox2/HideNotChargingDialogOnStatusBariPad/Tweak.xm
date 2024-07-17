#import <UIKit/UIKit.h>

%hook SBStatusBarStateAggregator
- (bool)_shouldShowNotChargingItem {
    return 0;
}
%end

