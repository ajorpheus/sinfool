#import <UIKit/UIKit.h>

%hook Chartboost
- (id)init {
    return NULL;
}
%end

%hook RevMobAdFetcher
- (id)init {
    return NULL;
}
%end

%hook AdManager
- (id)init {
    return NULL;
}
%end

%hook ALTaskRenderAd
- (id)cacheNonVideoResources:(id)arg1 {
    arg1 = NULL;
    return %orig;
}
%end

