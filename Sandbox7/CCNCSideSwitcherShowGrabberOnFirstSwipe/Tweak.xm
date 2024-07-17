#import <UIKit/UIKit.h>

%hook SBNotificationCenterController
- (bool)_shouldShowGrabberOnFirstSwipe {
    // NC
    return 1;
}
%end

%hook SBControlCenterController
- (bool)_shouldShowGrabberOnFirstSwipe {
    // CC
    return 1;
}
%end

%hook SBGrabberTongue
- (bool)_recognizerIsOutsideGrabberFreeZone:(id)arg1 {
    // Side Switcher
    return 1;
}
%end

