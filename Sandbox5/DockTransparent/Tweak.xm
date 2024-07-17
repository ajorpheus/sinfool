#import <UIKit/UIKit.h>

%hook SBDockView
- (void)setBackgroundAlpha:(float)arg1 {
    arg1 = 0;
    %orig;
}
%end

