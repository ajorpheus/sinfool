#import <UIKit/UIKit.h>

%hook SBNotificationCenterController
- (bool)_shouldShowGrabberOnFirstSwipe {
    // Show NC Grabber On First Swipe
    return 0;
}
%end

%hook SBControlCenterController
- (bool)_shouldShowGrabberOnFirstSwipe {
    // Show CC Grabber On First Swipe
    return 0;
}
%end

%hook SpringBoard
- (long long)_statusBar:(id)arg1 styleForRequestedStyle:(long long)arg2 overrides:(int)arg3 {
    return -1;
}
%end

%hook SBAppStatusBarTransitionInfo
- (bool)zoomOther {
    return 0;
}
%end

%hook UIStatusBarStyleRequest
- (bool)isDoubleHeight {
    return 0;
}
%end

