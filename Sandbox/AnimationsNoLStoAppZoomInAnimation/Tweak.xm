#import <UIKit/UIKit.h>

%hook SBUIAnimationLockScreenToAppZoomIn
- (void)_setHidden:(bool)arg1 {
    arg1 = 1;
    %orig;
}
%end

