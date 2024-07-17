#import <UIKit/UIKit.h>

%hook NBCDSplashScreenViewController
- (BOOL)isVideoFinished {
    // Faster Startup (Removes NBC Animation)
    return 1;
}
%end

%hook UIStatusBarForegroundStyleAttributes
- (id)initWithHeight:(float)arg1 legibilityStyle:(int)arg2 {
    // Removes Status Bar Foreground
    return NULL;
}
%end

%hook ANVPlayerConfig
- (BOOL)serverSideAdSkipPreroll {
    // Disables Preroll Ads
    return 1;
}
%end

