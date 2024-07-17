#import <UIKit/UIKit.h>

%hook SKUIScrollingTabBarBackgroundView
- (void)setShowsTopHairline:(bool)arg1 {
    // Show Top Line (Mini Player)
    arg1 = 1;
    %orig;
}
%end

%hook SKUIScrollingTabBarBackgroundView
- (void)setShowsBackdrop:(bool)arg1 {
    // Show Backdrop (Tab Bar & Mini Player)
    arg1 = 0;
    %orig;
}
%end

%hook SKUIScrollingTabBarBackgroundView
- (void)setShowsBottomHairline:(bool)arg1 {
    // Show Bottom Line (Mini Player)
    arg1 = 1;
    %orig;
}
%end

%hook MusicTabBarController
- (void)setMiniPlayerVisible:(bool)arg1 {
    // Show Mini Player
    arg1 = 1;
    %orig;
}
%end

