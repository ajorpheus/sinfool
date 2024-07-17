#import <UIKit/UIKit.h>

%hook SBNotificationCenterLayoutViewController
- (bool)todayViewSettingsViewController:(id)arg1 canReorderInterfaceItem:(id)arg2 {
    return 1;
}
%end

