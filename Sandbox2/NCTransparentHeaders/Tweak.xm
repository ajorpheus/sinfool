#import <UIKit/UIKit.h>

%hook SBNotificationCenterHeaderView
- (long long)initialGraphicsQuality {
    return 0;
}
%end

