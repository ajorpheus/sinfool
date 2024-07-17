#import <UIKit/UIKit.h>

%hook UIDevice
- (long long)userInterfaceIdiom {
    return 1;
}
%end

%hook UIWindow
- (bool)_shouldAutorotateToInterfaceOrientation:(long long)arg1 checkForDismissal:(bool)arg2 isRotationDisabled:(bool*)arg3 {
    return 1;
}
%end

