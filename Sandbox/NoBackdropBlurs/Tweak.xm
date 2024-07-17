#import <UIKit/UIKit.h>

%hook CABackdropLayer
- (bool)isEnabled {
    return 0;
}
%end

%hook UITabBar
- (bool)_backgroundNeedsUpdate {
    return 0;
}
%end

%hook SKUITabBarBackgroundView
- (id)initWithFrame:(CGRect)arg1 {
    return NULL;
}
%end

