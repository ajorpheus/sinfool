#import <UIKit/UIKit.h>

%hook SBIconBadgeView
- (void)configureForIcon:(id)arg1 location:(int)arg2 highlighted:(bool)arg3 {
    arg2 = 1;
    %orig;
}
%end

