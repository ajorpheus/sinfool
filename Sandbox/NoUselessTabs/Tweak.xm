#import <UIKit/UIKit.h>

%hook MusicUserInterfaceStatusController
- (bool)_isMusicSubscriptionServiceRestricted {
    // For You & New
    return 1;
}
%end

%hook RadioAvailabilityController
- (bool)isRadioAvailable {
    // Radio
    return 0;
}
%end

%hook MusicStoreBag
- (bool)supportsConnect {
    // Connect
    return 0;
}
%end

