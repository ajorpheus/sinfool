#import <UIKit/UIKit.h>

%hook SBIconView
- (id)_legibilitySettingsWithStyle:(long long)arg1 primaryColor:(id)arg2 {
    // Set Color... (Arg#2)
    arg2 = [UIColor colorWithRed:255/255.0 green:127/255.0 blue:0/255.0 alpha:255/255.0];
    return %orig;
}
%end

%hook SBMutableIconLabelImageParameters
- (void)setAccessibilityIncreaseContrastEnabled:(bool)arg1 {
    arg1 = 1;
    %orig;
}
%end

