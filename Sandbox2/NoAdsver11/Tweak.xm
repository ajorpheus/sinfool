#import <UIKit/UIKit.h>

%hook SKSettingsViewController
- (BOOL)isFullVersion {
    return 1;
}
%end

%hook DLBrowserViewControllerIDownloader
- (BOOL)canDownloadFile:(id)arg1 {
    return 1;
}
%end

%hook MPInstanceProvider
- (id)buildMPBannerAdManagerWithDelegate:(id)arg1 {
    return NULL;
}
%end

%hook MPInstanceProvider
- (id)buildMPInterstitialAdManagerWithDelegate:(id)arg1 {
    return NULL;
}
%end

