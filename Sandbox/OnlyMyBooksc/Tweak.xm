#import <UIKit/UIKit.h>

%hook BKLibraryViewController
- (bool)wantsTabBar {
    // •
    return 0;
}
%end

%hook BKSKTabBarInfo
- (bool)isLibraryTab {
    // •
    return 1;
}
%end

%hook UITabBar
- (bool)_backgroundNeedsUpdate {
    // •
    return 0;
}
%end

%hook UITabBarButton
- (id)initWithImage:(id)arg1 selectedImage:(id)arg2 label:(id)arg3 withInsets:(UIEdgeInsets)arg4 {
    // •
    arg1 = NULL;
    arg3 = NULL;
    return %orig;
}
%end

%hook SKUITabBarBackgroundView
- (id)initWithFrame:(CGRect)arg1 {
    // •
    return NULL;
}
%end

%hook UITabBar
- (bool)_wantsAdaptiveBackdrop {
    // •
    return 0;
}
%end

