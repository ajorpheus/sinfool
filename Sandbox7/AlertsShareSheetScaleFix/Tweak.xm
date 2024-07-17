#import <UIKit/UIKit.h>

%hook _UIActivityGroupViewFlowLayout
- (void)setEvaluatedHorizontalItemOffset:(double)arg1 {
    // Set the spacing to your liking... (including negative values)
    arg1 = 0;
    %orig;
}
%end

