#import <UIKit/UIKit.h>

%hook SBCenterAppIconZoomAnimator
- (unsigned long long)_numberOfSignificantAnimations {
    // When unlocking via... "Touch ID"
    return 0;
}
%end

%hook SBCenterIconZoomAnimator
- (unsigned long long)_numberOfSignificantAnimations {
    // When unlocking via... "Slide To Unlock" or "Entering Passcode":  ⚠️ Delete/change this unit to "pass-through" if you're using Tage's "System Close Animation" option
    return 0;
}
%end

