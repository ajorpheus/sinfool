#import <UIKit/UIKit.h>

%hook AWESplashScreenViewController
- (id)initWithSplashAnimated:(BOOL)arg1 presentationType:(unsigned int)arg2 delegate:(id)arg3 dataSource:(id)arg4 {
    arg2 = 0;
    return %orig;
}
%end

%hook ENTAppDelegate_iPhone
- (int)splashScreenAnimatedImageCount:(id)arg1 {
    return 0;
}
%end

%hook ENTAppDelegate_iPad
- (int)splashScreenAnimatedImageCount:(id)arg1 {
    return 0;
}
%end

%hook ENTAppDelegate_iPhone
- (double)splashScreenDuration:(id)arg1 {
    return 0;
}
%end

%hook ENTAppDelegate_iPad
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

