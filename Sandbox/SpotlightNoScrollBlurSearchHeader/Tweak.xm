#import <UIKit/UIKit.h>

%hook SPUINavigationBar
- (void)updateBlurProgress:(double)arg1 animated:(bool)arg2 {
    arg1 = 0;
    %orig;
}
%end

