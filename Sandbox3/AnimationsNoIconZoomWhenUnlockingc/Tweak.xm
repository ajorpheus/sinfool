#import <UIKit/UIKit.h>

%hook SBCenterAppIconZoomAnimator
- (unsigned long long)_numberOfSignificantAnimations {
    // via Touch ID/Passcode
    return 0;
}
%end

%hook SBCenterIconZoomAnimator
- (unsigned long long)_numberOfSignificantAnimations {
    // via Slide To Unlock
    return 0;
}
%end

