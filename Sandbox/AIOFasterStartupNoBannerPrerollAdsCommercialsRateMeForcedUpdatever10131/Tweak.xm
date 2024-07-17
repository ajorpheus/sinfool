#import <UIKit/UIKit.h>

%hook CWSplashScreenStaticImage
- (id)initRemoteImageWithDuration:(unsigned long long)arg1 {
    arg1 = 0;
    return %orig;
}
%end

%hook DSMLinearVideoAdsManager
- (id)providerPrePodPromo {
    return NULL;
}
%end

%hook DSMLinearVideoAdsManager
- (bool)enabled {
    return 0;
}
%end

%hook GADAdFetcher
- (id)init {
    return NULL;
}
%end

%hook GADBannerView
- (id)slot {
    return NULL;
}
%end

%hook PWAppConfiguration
- (bool)isForceUpgradeEnabled {
    return 0;
}
%end

%hook PWAppConfiguration
- (bool)isRatingsEnabled {
    return 0;
}
%end

