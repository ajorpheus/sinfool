#import <UIKit/UIKit.h>

%hook SBDashBoardTodayViewController
- (bool)_shouldHideDateTimeForZeroWidgetDisplay {
    // Today View - Time/Date Visibility: (Show=F, Hide=T)
    return 1;
}
%end

%hook SBDashBoardViewController
- (bool)shouldAutorotate {
    // LS - Enable Rotation: (Yes=T, No=F)
    return 1;
}
%end

%hook SBFLockScreenDateView
- (void)setAlignmentPercent:(double)arg1 {
    arg1 = -1;
    %orig;
}
%end

