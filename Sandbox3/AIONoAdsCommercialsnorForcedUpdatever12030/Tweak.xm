#import <UIKit/UIKit.h>

%hook GADAdFetcher
- (id)init {
    return NULL;
}
%end

%hook FWAd
- (unsigned int)adId {
    return 0;
}
%end

%hook AWEVideoViewBottomAdBar
- (id)initWithCoder:(id)arg1 {
    arg1 = NULL;
    return %orig;
}
%end

%hook AWEAsset
- (id)adCuePoints {
    return NULL;
}
%end

