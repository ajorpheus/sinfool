#import <UIKit/UIKit.h>

%hook SBMediaController
- (bool)routeOtherThanHandsetIsAvailable {
    // CC Visibility
    return 1;
}
%end

%hook MPAVRoutingController
- (bool)routeOtherThanHandsetAvailable {
    return 0;
}
%end

%hook MPAVRoutingController
- (bool)routeOtherThanHandsetAndSpeakerAvailable {
    return 0;
}
%end

