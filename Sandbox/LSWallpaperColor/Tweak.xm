#import <UIKit/UIKit.h>

%hook SBDashBoardAppearance
- (void)setBackgroundColor:(id)arg1 {
    // Set Color...
    arg1 = [UIColor colorWithRed:17/255.0 green:104/255.0 blue:104/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook SBDashBoardViewController
- (bool)isTransitioning {
    return 0;
}
%end

