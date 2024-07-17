#import <UIKit/UIKit.h>

%hook SBNotificationCenterWithSearchViewController
- (bool)showPageControl {
    return 0;
}
%end

