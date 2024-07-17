#import <UIKit/UIKit.h>

%hook SBDeckSwitcherItemContainer
- (void)setContentCornerRadiusProgress:(double)arg1 {
    // Corner Radius: (Higher # = More Round) 0=Square
    arg1 = 5;
    %orig;
}
%end

%hook SBAppSwitcherPageView
- (void)setShadowAlpha:(double)arg1 {
    // Removes Card Shadow
    arg1 = 0;
    %orig;
}
%end

%hook SBDeckSwitcherItemContainer
- (void)setContentBlurRadiusProgress:(double)arg1 {
    // Removes Scrolling Blur
    arg1 = 0;
    %orig;
}
%end

