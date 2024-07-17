#import <UIKit/UIKit.h>

%hook SPAppAdsAnalyticsController
- (bool)showAds {
    return 0;
}
%end

