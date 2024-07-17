#import <UIKit/UIKit.h>

%hook SBCoverSheetTransitionSettings
- (void)setIconsFlyIn:(bool)arg1 {
    arg1 = 0;
    %orig;
}
%end

