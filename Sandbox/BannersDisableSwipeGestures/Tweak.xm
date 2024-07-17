#import <UIKit/UIKit.h>

%hook SBBannerGestureHandler
- (id)initWithBannerController:(id)arg1 bannerViewController:(id)arg2 {
    // (Return Value): Disable all up + down swipe gestures=NULL, Stock=pass-through  (Arg#2): Disable swipe up gesture in quick reply etc.=NULL, Stock=pass-through
    arg2 = NULL;
    return %orig;
}
%end

