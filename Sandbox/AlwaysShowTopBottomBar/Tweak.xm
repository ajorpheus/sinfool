#import <UIKit/UIKit.h>

%hook MNNavigationModeController
- (void)_setNavigationBarHidden:(bool)arg1 animated:(bool)arg2 {
    // •
    arg2 = 1;
    %orig;
}
%end

