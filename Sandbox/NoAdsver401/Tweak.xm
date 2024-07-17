#import <UIKit/UIKit.h>

%hook GADBannerView
- (void)setAdSize:(GADAdSize)arg1 andReload:(BOOL)arg2 {
    arg2 = 0;
    %orig;
}
%end

%hook FWAd
- (unsigned int)adId {
    return 0;
}
%end

