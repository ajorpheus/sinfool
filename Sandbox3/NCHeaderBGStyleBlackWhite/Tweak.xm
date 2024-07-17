#import <UIKit/UIKit.h>

%hook SBNotificationCenterHeaderView
- (long long)initialGraphicsQuality {
    // 0=Transparent Header, 10=Black Header
    return 10;
}
%end

