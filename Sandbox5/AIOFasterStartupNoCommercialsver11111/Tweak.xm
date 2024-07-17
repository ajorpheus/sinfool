#import <UIKit/UIKit.h>

%hook SNISplashScreenViewController
- (BOOL)isVideoFinished {
    return 1;
}
%end

%hook FWAd
- (unsigned int)adId {
    return 0;
}
%end

