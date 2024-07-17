#import <UIKit/UIKit.h>

%hook SBDashBoardCombinedListViewController
- (bool)_notificationSectionSettingsHidesSection:(id)arg1 {
    return 1;
}
%end

