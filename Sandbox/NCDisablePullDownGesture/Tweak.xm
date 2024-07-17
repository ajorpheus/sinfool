#import <UIKit/UIKit.h>

%hook SBNotificationCenterController
- (bool)gestureRecognizerShouldBegin:(id)arg1 {
    return 0;
}
%end

