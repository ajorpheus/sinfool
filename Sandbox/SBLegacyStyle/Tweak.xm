#import <UIKit/UIKit.h>

%hook UIStatusBar
- (bool)simulatesLegacyAppearance {
    // •
    return 1;
}
%end

%hook UIStatusBar
- (bool)isTranslucent {
    // •
    return 1;
}
%end

%hook UIStatusBarStyleRequest
- (long long)style {
    // Enable Legacy SB on LS/HS & Translucence:  (YES=1, NO=pass-through)
    return 1;
}
%end

