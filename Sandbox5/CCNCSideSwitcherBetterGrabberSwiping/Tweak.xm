#import <UIKit/UIKit.h>

%hook SBScreenEdgePanGestureRecognizer
- (bool)isLocationWithinGrabberActiveZone {
    // NC/CC
    return 1;
}
%end

%hook SBGrabberTongue
- (bool)_recognizerIsWithinGrabberZone:(id)arg1 {
    // Side Switcher
    return 1;
}
%end

