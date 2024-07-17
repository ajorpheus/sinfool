#import <UIKit/UIKit.h>

%hook BRVAppDelegate_iPad
- (int)splashScreenAnimatedImageCount:(id)arg1 {
    return 0;
}
%end

%hook BRVAppDelegate_iPhone
- (int)splashScreenAnimatedImageCount:(id)arg1 {
    return 0;
}
%end

%hook BRVAppDelegate_iPad
- (double)splashScreenDuration:(id)arg1 {
    return 0;
}
%end

%hook BRVAppDelegate_iPhone
- (double)splashScreenDuration:(id)arg1 {
    return 0;
}
%end

%hook GADAdFetcher
- (id)init {
    return NULL;
}
%end

%hook FWAd
- (unsigned int)adId {
    return 0;
}
%end

%hook AWEVideoViewBottomAdBar
- (id)initWithCoder:(id)arg1 {
    arg1 = NULL;
    return %orig;
}
%end

