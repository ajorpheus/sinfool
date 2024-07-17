#import <UIKit/UIKit.h>

%hook SBLockScreenNowPlayingController
- (void)setEnabled:(bool)arg1 {
    arg1 = 0;
    %orig;
}
%end

