#import <UIKit/UIKit.h>

%hook SBDashBoardCombinedListViewController
- (bool)_disableScrolling {
    // Disables Horizontal Scrolling Of Notifications
    return 1;
}
%end

%hook SBMainDisplayPolicyAggregator
- (bool)_allowsCapabilityLockScreenTodayViewWithExplanation:(id*)arg1 {
    return 0;
}
%end

%hook SBMainDisplayPolicyAggregator
- (bool)_allowsCapabilityLockScreenCameraWithExplanation:(id*)arg1 {
    return 0;
}
%end

