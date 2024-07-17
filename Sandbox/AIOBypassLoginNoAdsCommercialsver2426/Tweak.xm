#import <UIKit/UIKit.h>

%hook MTVConfig
- (id)getAds {
    return NULL;
}
%end

%hook MTVTVESubscriber
- (BOOL)isAuthorized {
    return 1;
}
%end

%hook MTVTVESubscriber
- (BOOL)isAuthenticated {
    return 1;
}
%end

%hook MTVHomeAdView
- (id)initWithFrame:(CGRect)arg1 {
    return NULL;
}
%end

%hook MTVShowAdView
- (id)initWithFrame:(CGRect)arg1 {
    return NULL;
}
%end

%hook MTVBrowseAdView
- (id)initWithFrame:(CGRect)arg1 {
    return NULL;
}
%end

%hook MTVOnTvTileAdView
- (id)initWithFrame:(CGRect)arg1 {
    return NULL;
}
%end

%hook VMNPlayer
- (bool)spinnerEnabled {
    return 0;
}
%end

