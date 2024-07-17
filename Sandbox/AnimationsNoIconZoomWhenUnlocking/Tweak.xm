#import <UIKit/UIKit.h>

%hook SBCenterAppIconZoomAnimator
- (unsigned long long)_numberOfSignificantAnimations {
    return 0;
}
%end

%hook SBCenterIconZoomAnimator
- (unsigned long long)_numberOfSignificantAnimations {
    return 0;
}
%end

