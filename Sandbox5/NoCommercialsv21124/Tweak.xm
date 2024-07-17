#import <UIKit/UIKit.h>

%hook FWAd
- (unsigned int)adId {
    return 0;
}
%end

