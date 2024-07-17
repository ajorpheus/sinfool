#import <UIKit/UIKit.h>

%hook CWSplashScreenStaticImage
- (void)setIsSplashVideo:(bool)arg1 {
    arg1 = 0;
    %orig;
}
%end

%hook DSMLinearVideoAdsProvider
- (void)setEnabled:(bool)arg1 {
}
%end

