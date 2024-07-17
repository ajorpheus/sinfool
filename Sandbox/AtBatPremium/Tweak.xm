#import <UIKit/UIKit.h>

%hook SponsorHelper
- (BOOL)shouldOfferCarrierAppSponsor:(id)arg1 {
    return 1;
}
%end

%hook ABInAppPurchaseHelper
- (BOOL)hasCarrierPlatformAccess {
    return 1;
}
%end

%hook InAppPurchaseConfig
- (BOOL)shouldUnlockAllFeatures {
    return 1;
}
%end

