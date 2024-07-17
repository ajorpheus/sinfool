#import <UIKit/UIKit.h>

%hook SBDashBoardTodayViewController
- (long long)backgroundStyle {
    // Set Style... (Blur=3, Light Blur=4, Dark Blur=5, Darker Blur=6, Darkest Blur=7)
    return 6;
}
%end

%hook SBDashBoardViewController
- (bool)isTransitioning {
    // Hide/Show Initial Scrolling Blur
    return 0;
}
%end

