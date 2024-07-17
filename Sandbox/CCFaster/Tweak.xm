#import <UIKit/UIKit.h>

%hook SBControlCenterSettings
- (BOOL)useNewBounce {
    // Disables Bounce Effect
    return 0;
}
%end

%hook SBControlCenterController
- (void)dismissAnimated:(BOOL)arg1 {
    // Disables Closing Animation
    arg1 = 0;
    %orig;
}
%end

