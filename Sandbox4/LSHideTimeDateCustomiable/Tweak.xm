#import <UIKit/UIKit.h>

%hook SBDashBoardView
- (void)setDateViewPageAlignment:(long long)arg1 {
    // Set where to hide...
    arg1 = -1;
    %orig;
}
%end

