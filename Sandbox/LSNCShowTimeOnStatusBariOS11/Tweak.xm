#import <UIKit/UIKit.h>

%hook SBMainStatusBarStateProvider
- (void)enableTime:(bool)arg1 crossfade:(bool)arg2 crossfadeDuration:(double)arg3 {
    arg1 = 1;
    %orig;
}
%end

