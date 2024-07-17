#import <UIKit/UIKit.h>

%hook SBNotificationCenterViewController
- (long long)_defaultBackdropViewStyle {
    return 1;
}
%end

