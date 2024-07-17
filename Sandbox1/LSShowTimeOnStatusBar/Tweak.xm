#import <UIKit/UIKit.h>

%hook SBLockScreenViewController
- (bool)shouldShowLockStatusBarTime {
    // Show LS Status Bar Time
    return 1;
}
%end

%hook SBLockScreenView
- (void)setTopGrabberHidden:(bool)arg1 forRequester:(id)arg2 {
    // Hide Top Grabber
    arg1 = 1;
    %orig;
}
%end

