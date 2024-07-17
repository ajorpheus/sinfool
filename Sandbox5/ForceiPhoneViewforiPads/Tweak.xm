#import <UIKit/UIKit.h>

%hook UIDevice
- (long long)userInterfaceIdiom {
    // •
    return 0;
}
%end

%hook UIWindow
- (bool)_shouldAutorotateToInterfaceOrientation:(long long)arg1 checkForDismissal:(bool)arg2 isRotationDisabled:(bool*)arg3 {
    // •
    return 1;
}
%end

%hook UIWindow
- (void)_updateToInterfaceOrientation:(long long)arg1 duration:(double)arg2 force:(bool)arg3 {
    // •
    arg3 = 0;
    %orig;
}
%end

%hook UIDevice
- (void)setOrientation:(long long)arg1 animated:(bool)arg2 {
    // •
    arg2 = 0;
    %orig;
}
%end

