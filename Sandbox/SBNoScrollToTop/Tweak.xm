#import <UIKit/UIKit.h>

%hook UIScrollView
- (void)setScrollsToTop:(bool)arg1 {
    // •
    arg1 = 0;
    %orig;
}
%end

