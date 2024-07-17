#import <UIKit/UIKit.h>

%hook _SFNavigationBarURLButton
- (void)setBackgroundAlphaFactor:(double)arg1 {
    arg1 = 0;
    %orig;
}
%end

