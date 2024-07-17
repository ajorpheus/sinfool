#import <UIKit/UIKit.h>

%hook NHLAccessControlManager
- (BOOL)isRogersUser {
    return 1;
}
%end

%hook NHLAccessControlManager
- (BOOL)isLocalGclSubscription {
    return 1;
}
%end

%hook NHLAccessControlManager
- (BOOL)isGclSubscription {
    return 1;
}
%end

%hook FWAd
- (unsigned int)adId {
    return 0;
}
%end

%hook GADAdFetcher
- (id)init {
    return NULL;
}
%end

