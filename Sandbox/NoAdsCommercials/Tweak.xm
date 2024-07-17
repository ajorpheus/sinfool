#import <UIKit/UIKit.h>

%hook MTVConfig
- (id)getAds {
    return NULL;
}
%end

%hook VMNFreeWheelComponent
- (BOOL)shouldPlayPreroll {
    return 0;
}
%end

%hook MTVHomeBigAdView
- (BOOL)webView:(id)arg1 shouldStartLoadWithRequest:(id)arg2 navigationType:(int)arg3 {
    return 0;
}
%end

%hook MTVBrowseAdTileView
- (BOOL)webView:(id)arg1 shouldStartLoadWithRequest:(id)arg2 navigationType:(int)arg3 {
    return 0;
}
%end

%hook MTVOnTvTileAdView
- (BOOL)webView:(id)arg1 shouldStartLoadWithRequest:(id)arg2 navigationType:(int)arg3 {
    return 0;
}
%end

