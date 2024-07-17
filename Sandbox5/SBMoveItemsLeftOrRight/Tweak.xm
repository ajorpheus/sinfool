#import <UIKit/UIKit.h>

%hook SBLockScreenViewController
- (bool)shouldShowLockStatusBarTime {
    // •
    return 1;
}
%end

%hook UIStatusBarItem
- (bool)appearsOnLeft {
    // Appears On Left
    return 1;
}
%end

