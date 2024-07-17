#import <UIKit/UIKit.h>

%hook MKStoreManager
- (BOOL)isProductTypePurchased:(int)arg1 {
    // Bypass Login
    return 1;
}
%end

%hook NLAccessControlManager
- (BOOL)isVIPAccount {
    // Bypass Login
    return 1;
}
%end

%hook NLAccessControlManager
- (BOOL)isLiveChannelAvailableForCurrentLocation {
    // Remove Location Check
    return 1;
}
%end

%hook NLNBAGeoManager
- (void)geoCheckRequestDone:(id)arg1 {
    // Remove Geo Block
    arg1 = NULL;
    %orig;
}
%end

%hook GADAdFetcher
- (id)init {
    // Removes Banner Ads
    return NULL;
}
%end

%hook UIStatusBarForegroundStyleAttributes
- (id)initWithHeight:(float)arg1 legibilityStyle:(int)arg2 {
    // Status Bar Foreground: (NULL)=none, pass-through=yes
    return NULL;
}
%end

