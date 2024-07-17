#import <UIKit/UIKit.h>

%hook SBSearchEtceteraLayoutView
- (unsigned long long)_indexOfNotificationsPageView {
    return 1;
}
%end

%hook SBSearchEtceteraLayoutView
- (bool)_shouldAllowScrollingForStyle:(unsigned long long)arg1 {
    return 0;
}
%end

%hook SBNotificationCenterWithSearchViewController
- (bool)showPageControl {
    return 0;
}
%end

