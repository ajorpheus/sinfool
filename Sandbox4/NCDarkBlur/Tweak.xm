#import <UIKit/UIKit.h>

%hook SBNotificationCenterViewController
- (bool)tintsBackground {
    return 0;
}
%end

