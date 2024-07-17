#import <UIKit/UIKit.h>

%hook FWAd
- (unsigned long long)adId {
    return 0;
}
%end

%hook CCTVEManager
- (bool)videoIsAuthorized:(id)arg1 {
    return 1;
}
%end

