#import <UIKit/UIKit.h>

%hook AETNVideoSplashScreenViewController
- (BOOL)isFinished {
    return 1;
}
%end

%hook FWAd
- (unsigned int)adId {
    return 0;
}
%end

%hook AWEAsset
- (id)adCuePoints {
    return NULL;
}
%end

