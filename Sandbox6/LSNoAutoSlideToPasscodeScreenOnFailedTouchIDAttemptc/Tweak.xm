#import <UIKit/UIKit.h>

%hook SBLockScreenManager
- (void)setPasscodeVisible:(bool)arg1 animated:(bool)arg2 {
    arg1 = 0;
    %orig;
}
%end

