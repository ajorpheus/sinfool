#import <UIKit/UIKit.h>

%hook SBIconListPageControl
- (void)setShouldShowSearchIndicator:(bool)arg1 {
    arg1 = 0;
    %orig;
}
%end

