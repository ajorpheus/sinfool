#import <UIKit/UIKit.h>

%hook SBDashBoardCombinedListViewController
- (bool)_allowsDateViewOrProudLockScroll {
    return 0;
}
%end

