#import <UIKit/UIKit.h>

%hook SBControlCenterController
- (bool)_shouldShowGrabberOnFirstSwipe {
    return 0;
}
%end

%hook CCUIControlCenterSettings
- (void)setUseNewBounce:(bool)arg1 {
    arg1 = 0;
    %orig;
}
%end

