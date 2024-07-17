#import <UIKit/UIKit.h>

%hook SBDashBoardViewController
- (bool)shouldShowLockStatusBarTime {
    return 1;
}
%end

