#import <UIKit/UIKit.h>

%hook SBNotificationCenterViewController
- (bool)blursBackground {
    // •
    return 0;
}
%end

