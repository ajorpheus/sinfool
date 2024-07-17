#import <UIKit/UIKit.h>

%hook SBNotificationBannerDestination
- (void)_setStatusBarsHidden:(bool)arg1 withDuration:(double)arg2 {
    arg1 = 0;
    %orig;
}
%end

