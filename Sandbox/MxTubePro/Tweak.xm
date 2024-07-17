#import <UIKit/UIKit.h>

%hook YCAppDelegate
- (BOOL)hasUpgradedToPro {
    // Unit for -(BOOL) hasExtraFeatures
    return 1;
}
%end

%hook YCAppDelegate
- (BOOL)enableAds {
    return 0;
}
%end

