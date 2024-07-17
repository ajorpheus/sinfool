#import <UIKit/UIKit.h>

%hook MKStoreManager
- (BOOL)isProductTypePurchased:(int)arg1 {
    return 1;
}
%end

%hook NLAccessControlManager
- (BOOL)isVIPAccount {
    return 1;
}
%end

%hook NLAccessControlManager
- (BOOL)isLiveChannelAvailableForCurrentLocation {
    return 1;
}
%end

