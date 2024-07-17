#import <UIKit/UIKit.h>

%hook SBDashBoardCombinedListViewController
- (bool)notificationListViewControllerShouldAllowRecentNotificationsReveal:(id)arg1 {
    return 0;
}
%end

