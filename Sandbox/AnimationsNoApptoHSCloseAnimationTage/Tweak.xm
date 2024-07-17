#import <UIKit/UIKit.h>

%hook SBUIAnimationZoomDownApp
- (void)_setHidden:(bool)arg1 {
    arg1 = 1;
    %orig;
}
%end

%hook SBApplication
- (long long)wallpaperStyle {
    return 1;
}
%end

