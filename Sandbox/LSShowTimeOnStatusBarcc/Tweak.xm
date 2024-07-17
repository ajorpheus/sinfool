#import <UIKit/UIKit.h>

%hook SBLockScreenViewController
- (bool)shouldShowLockStatusBarTime {
    // •
    return 1;
}
%end

%hook SBLockScreenView
- (void)setTopGrabberHidden:(bool)arg1 forRequester:(id)arg2 {
    // •
    arg1 = 1;
    %orig;
}
%end

