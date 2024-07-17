#import <UIKit/UIKit.h>

%hook UIStatusBarStyleRequest
- (long long)style {
    // Enable on LS/HS:  (NO=pass-through, Black=0, Translucent=1)
    return 1;
}
%end

%hook UIStatusBar
- (bool)simulatesLegacyAppearance {
    return 1;
}
%end

