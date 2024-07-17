#import <UIKit/UIKit.h>

%hook SBSearchEtceteraLayoutView
- (unsigned long long)_indexOfNotificationsPageView {
    return 0;
}
%end

