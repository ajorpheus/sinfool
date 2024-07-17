#import <UIKit/UIKit.h>

%hook SBBannerGestureHandler
- (id)initWithBannerController:(id)arg1 bannerViewController:(id)arg2 {
    // •
    arg2 = NULL;
    return %orig;
}
%end

