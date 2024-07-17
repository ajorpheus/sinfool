#import <UIKit/UIKit.h>

%hook SBNotificationCenterViewController
- (long long)_defaultBackdropViewStyle {
    return 2;
}
%end

%hook SBNotificationCenterViewController
- (bool)tintsBackground {
    return 0;
}
%end

