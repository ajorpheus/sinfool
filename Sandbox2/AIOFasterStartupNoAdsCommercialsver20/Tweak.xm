#import <UIKit/UIKit.h>

%hook BETSplashScreenViewController
- (BOOL)isVideoFinished {
    return 1;
}
%end

%hook GADAdFetcher
- (id)init {
    return NULL;
}
%end

%hook BETVideoPlayerAdManagerDART
- (id)adsManager {
    return NULL;
}
%end

