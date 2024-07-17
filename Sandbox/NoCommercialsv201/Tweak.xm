#import <UIKit/UIKit.h>

%hook FWAd
- (unsigned long long)adId {
    return 0;
}
%end

