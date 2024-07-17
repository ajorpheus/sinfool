#import <UIKit/UIKit.h>

%hook CCSUSplashViewController
- (void)dismissSplashScreenAfterDelay:(double)arg1 {
    arg1 = 0;
    %orig;
}
%end

%hook FWAd
- (unsigned int)adId {
    return 0;
}
%end

%hook UIStatusBarForegroundView
- (id)initWithFrame:(CGRect)arg1 foregroundStyle:(id)arg2 usesVerticalLayout:(bool)arg3 {
    return NULL;
}
%end

