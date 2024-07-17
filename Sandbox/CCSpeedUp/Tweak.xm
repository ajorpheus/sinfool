#import <UIKit/UIKit.h>

%hook SBControlCenterController
- (void)presentAnimated:(bool)arg1 {
    // Presentation Animation
    arg1 = 0;
    %orig;
}
%end

%hook SBControlCenterSettings
- (bool)useNewBounce {
    // Bounce
    return 0;
}
%end

%hook SBControlCenterController
- (void)dismissAnimated:(bool)arg1 {
    // Dismiss Animation
    arg1 = 0;
    %orig;
}
%end

