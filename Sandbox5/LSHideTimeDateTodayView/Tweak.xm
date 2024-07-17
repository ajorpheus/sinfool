#import <UIKit/UIKit.h>

%hook SBDashBoardTodayViewController
- (bool)_shouldHideDateTimeForZeroWidgetDisplay {
    return 1;
}
%end

