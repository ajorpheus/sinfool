#import <UIKit/UIKit.h>

%hook _UIActivityGroupViewFlowLayout
- (void)setEvaluatedHorizontalItemOffset:(double)arg1 {
    // Set number... (lower # = closer together)
    arg1 = -5;
    %orig;
}
%end

