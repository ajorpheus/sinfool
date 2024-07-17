#import <UIKit/UIKit.h>

%hook SBDashBoardView
- (void)setForceDateViewCentered:(bool)arg1 {
    arg1 = 1;
    %orig;
}
%end

%hook SBDashBoardView
- (bool)forceDateViewCentered {
    return 1;
}
%end

