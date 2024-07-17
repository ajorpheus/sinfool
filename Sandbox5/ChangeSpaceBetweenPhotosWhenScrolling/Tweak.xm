#import <UIKit/UIKit.h>

%hook PUOneUpSettings
- (void)setInterpageSpacing:(double)arg1 {
    // Set Spacing:  (0=None)
    arg1 = 5;
    %orig;
}
%end

