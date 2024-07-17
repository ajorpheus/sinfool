#import <UIKit/UIKit.h>

%hook SBControlCenterSettings
- (void)setHighlightColor:(id)arg1 {
    // Color
    arg1 = [UIColor colorWithRed:255/255.0 green:127/255.0 blue:0/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook MPUMediaControlsTitlesView
- (bool)isHighlighted {
    // Track Detail Text
    return 1;
}
%end

