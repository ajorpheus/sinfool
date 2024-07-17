#import <UIKit/UIKit.h>

%hook SBMutableIconLabelImageParameters
- (void)setFocusHighlightColor:(id)arg1 {
    // Background
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook SBMutableIconLabelImageParameters
- (void)setTextColor:(id)arg1 {
    // Label
    arg1 = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:255/255.0];
    %orig;
}
%end

