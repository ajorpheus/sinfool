#import <UIKit/UIKit.h>

%hook YTPlayerBarController
- (void)setPlayerViewLayout:(int)arg1 {
    arg1 = 0;
    %orig;
}
%end

