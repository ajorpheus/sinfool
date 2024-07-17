#import <UIKit/UIKit.h>

%hook TPRevealingRingView
- (void)setColorOutsideRing:(id)arg1 {
    arg1 = [UIColor colorWithRed:57/255.0 green:109/255.0 blue:167/255.0 alpha:255/255.0];
    %orig;
}
%end

