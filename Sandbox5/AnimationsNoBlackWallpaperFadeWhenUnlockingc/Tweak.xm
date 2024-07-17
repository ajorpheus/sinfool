#import <UIKit/UIKit.h>

%hook SBWallpaperController
- (void)setActiveOrientationSource:(long long)arg1 andUpdateToOrientation:(long long)arg2 usingCrossfadeToBlack:(bool)arg3 {
    arg3 = 0;
    %orig;
}
%end

