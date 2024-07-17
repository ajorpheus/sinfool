#import <UIKit/UIKit.h>

%hook CWSplashScreenStaticImage
- (id)initRemoteImageWithDuration:(unsigned int)arg1 {
    arg1 = 0;
    return %orig;
}
%end

%hook GADBannerView
- (void)setAdSize:(GADAdSize)arg1 andReload:(BOOL)arg2 {
    arg2 = 0;
    %orig;
}
%end

%hook com_ds_ads_AdManager
- (unsigned char)getCanPlayPreroll {
    return 0;
}
%end

%hook com_ds_metadata_AdBreak
- (int)getStartTime {
    return 999999;
}
%end

