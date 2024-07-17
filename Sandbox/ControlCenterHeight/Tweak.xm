#import <UIKit/UIKit.h>

%hook SBControlCenterContentContainerView
- (void)setContentHeight:(double)arg1 {
    // Control Center Height:  (approx Stock heights) iP5/5S=436, iP6+=429, iPad=184
    arg1 = 436;
    %orig;
}
%end

%hook SBControlCenterSettings
- (bool)useNewBounce {
    // Use Bounce:  (T or F)
    return 0;
}
%end

%hook SBUIControlCenterButton
- (bool)isCircleButton {
    // Quick Launch Uses Circle Buttons:  (T or F)
    return 1;
}
%end

