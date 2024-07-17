#import <UIKit/UIKit.h>

%hook SBCoverSheetTransitionsSettings
- (void)setTension:(double)arg1 {
    arg1 = 0;
    %orig;
}
%end

