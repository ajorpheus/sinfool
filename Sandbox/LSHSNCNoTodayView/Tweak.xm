#import <UIKit/UIKit.h>

%hook SBPolicyAggregator
- (bool)_allowsCapabilityLockScreenTodayViewWithExplanation:(id*)arg1 {
    // LS
    return 0;
}
%end

%hook SBRootFolderView
- (unsigned long long)_minusPageCount {
    // HS
    return 0;
}
%end

%hook SBSearchEtceteraLayoutView
- (bool)_shouldAllowScrollingForStyle:(unsigned long long)arg1 {
    // NC
    return 0;
}
%end

%hook SBNotificationCenterWithSearchViewController
- (bool)showPageControl {
    // NC
    return 0;
}
%end

