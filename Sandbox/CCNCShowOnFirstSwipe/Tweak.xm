#import <UIKit/UIKit.h>

%hook SBNotificationCenterController
- (bool)_shouldShowGrabberOnFirstSwipe {
    // NC
    return 0;
}
%end

%hook SBControlCenterController
- (bool)_shouldShowGrabberOnFirstSwipe {
    // CC
    return 0;
}
%end

