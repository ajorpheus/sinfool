#import <UIKit/UIKit.h>

%hook FWAd
- (unsigned int)adId {
    return 0;
}
%end

%hook DCMainNavigationViewController
- (BOOL)bannerAdLoaded {
    return 0;
}
%end

