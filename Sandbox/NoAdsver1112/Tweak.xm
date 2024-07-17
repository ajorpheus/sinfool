#import <UIKit/UIKit.h>

%hook GADAdFetcher
- (id)init {
    return NULL;
}
%end

%hook PrerollAd
- (id)adId {
    return NULL;
}
%end

%hook NFLNowFeedsViewController
- (id)onloaderAds {
    return NULL;
}
%end

