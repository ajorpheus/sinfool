#import <UIKit/UIKit.h>

%hook SBMutableIconLabelImageParameters
- (void)setTextColor:(id)arg1 {
    // Set Color (Argument #1)
    arg1 = [UIColor colorWithRed:255/255.0 green:127/255.0 blue:0/255.0 alpha:255/255.0];
    %orig;
}
%end

