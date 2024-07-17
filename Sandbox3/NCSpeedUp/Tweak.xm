#import <UIKit/UIKit.h>

%hook SBNotificationCenterController
- (void)dismissAnimated:(bool)arg1 {
    // Dismiss Animation
    arg1 = 0;
    %orig;
}
%end

