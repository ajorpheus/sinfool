#import <UIKit/UIKit.h>

%hook SpringBoard
- (bool)lockScreenCameraSupported {
    return 0;
}
%end

%hook SBDashBoardPageControl
- (void)setCameraPageEnabled:(bool)arg1 {
    arg1 = 0;
    %orig;
}
%end

%hook SBDashBoardPageControl
- (bool)isCameraPageEnabled {
    return 0;
}
%end

