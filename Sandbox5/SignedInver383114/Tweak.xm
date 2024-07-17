#import <UIKit/UIKit.h>

%hook RHAccountController
- (BOOL)signedIn {
    return 1;
}
%end

%hook RHRadioPlayableItemsProvider
- (BOOL)supportsSkipBackwards {
    return 1;
}
%end

%hook RHRadioPlayableItemsProvider
- (BOOL)supportsUserScrubbing {
    return 1;
}
%end

%hook LocalyticsDatapointHelper
+ (BOOL)isDeviceJailbroken {
    return 0;
}
%end

%hook RHAccountController
- (BOOL)upgradeRequired {
    return 0;
}
%end

%hook RHAccountController
- (BOOL)hasStreamEntitlements {
    return 1;
}
%end

%hook RHAccountController
- (BOOL)hasRadioEntitlements {
    return 1;
}
%end

%hook RHAccountController
- (BOOL)hasDownloadEntitlements {
    return 1;
}
%end

%hook RHRadioPlayContext
- (BOOL)supportsSkipBackwards {
    return 1;
}
%end

%hook RHRadioPlayContext
- (BOOL)supportsUserScrubbing {
    return 1;
}
%end

%hook RHAccountController
- (BOOL)hasDownloadFavoriteEntitlements {
    return 1;
}
%end

%hook CRAppRater
- (id)rateMeAlert {
    return NULL;
}
%end

