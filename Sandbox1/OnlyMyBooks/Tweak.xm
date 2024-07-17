#import <UIKit/UIKit.h>

%hook BKLibraryViewController
- (bool)wantsTabBar {
    return 0;
}
%end

%hook BKSKTabBarInfo
- (bool)isLibraryTab {
    return 1;
}
%end

%hook UITabBar
- (bool)_backgroundNeedsUpdate {
    return 0;
}
%end

%hook UITabBar
- (bool)_wantsAdaptiveBackdrop {
    return 0;
}
%end

%hook SKUITabBarBackgroundView
- (id)initWithFrame:(CGRect)arg1 {
    return NULL;
}
%end

