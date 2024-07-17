#import <UIKit/UIKit.h>

%hook SBLockScreenViewController
- (bool)shouldAutoUnlockForSource:(int)arg1 {
    return 1;
}
%end

%hook SBLockScreenDefaults
- (bool)useDashBoard {
    return 0;
}
%end

