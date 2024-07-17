#import <UIKit/UIKit.h>

%hook TPRevealingRingView
- (void)setCornerRadius:(float)arg1 {
    // Adjusts Corner Radius
    arg1 = 23;
    %orig;
}
%end

%hook TPRevealingRingView
- (void)setDefaultRingStrokeWidth:(float)arg1 {
    // Adjusts Ring Width
    arg1 = 3;
    %orig;
}
%end

