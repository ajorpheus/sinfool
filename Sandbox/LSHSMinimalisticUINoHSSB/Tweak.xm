#import <UIKit/UIKit.h>

%hook SBLockScreenViewController
- (bool)shouldShowLockStatusBarTime {
    // Show Time On LS SB
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

%hook SBSlideUpAppGrabberView
- (bool)_shouldUseVibrancy {
    // Hide Camera Grabber (part#2)
    return 0;
}
%end

%hook SBLockScreenView
- (void)setBottomGrabberHidden:(bool)arg1 forRequester:(id)arg2 {
    // Hide Bottom Grabber
    arg1 = 1;
    %orig;
}
%end

%hook UIStatusBarNewUIStyleAttributes
- (long long)legibilityStyle {
    // Hides HS SB
    return 1;
}
%end

