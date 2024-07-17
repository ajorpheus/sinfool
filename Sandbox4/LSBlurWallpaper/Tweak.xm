#import <UIKit/UIKit.h>

%hook SBDashBoardAppearance
- (void)setBackgroundStyle:(long long)arg1 {
    // Set Style... (Blur=3, Light Blur=4, Dark Blur=5, Darker Blur=6, Darkest Blur=7)
    arg1 = 4;
    %orig;
}
%end

