#import <UIKit/UIKit.h>

%hook SPUINavigationBar
- (void)showSeparator:(bool)arg1 animated:(bool)arg2 {
    // Top Separator
    arg1 = 0;
    %orig;
}
%end

