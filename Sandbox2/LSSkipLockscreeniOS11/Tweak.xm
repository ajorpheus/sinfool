#import <UIKit/UIKit.h>

%hook SBDashBoardViewController
- (bool)shouldAutoUnlockForSource:(int)arg1 {
    return 1;
}
%end

%hook SBNCScreenController
- (bool)canTurnOnScreenForNotificationRequest:(id)arg1 {
    return 0;
}
%end

