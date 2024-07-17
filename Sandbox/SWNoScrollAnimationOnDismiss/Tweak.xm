#import <UIKit/UIKit.h>

%hook SBAppSwitcherController
- (void)forceDismissAnimated:(bool)arg1 {
    // •
    arg1 = 0;
    %orig;
}
%end

