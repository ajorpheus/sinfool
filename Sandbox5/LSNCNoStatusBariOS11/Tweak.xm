#import <UIKit/UIKit.h>

%hook SBDashBoardViewController
- (void)_setFakeStatusBarEnabled:(bool)arg1 {
    arg1 = 1;
    %orig;
}
%end

