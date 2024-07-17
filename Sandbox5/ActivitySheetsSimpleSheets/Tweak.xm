#import <UIKit/UIKit.h>

%hook _UIActivityGroupViewFlowLayout
- (void)setEvaluatedHorizontalItemOffset:(double)arg1 {
    // Reduces Spacing Between Icons: (lower # = closer together)
    arg1 = -5;
    %orig;
}
%end

