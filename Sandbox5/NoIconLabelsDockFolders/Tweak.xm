#import <UIKit/UIKit.h>

%hook SBRootFolderView
- (void)_setDockOffscreenFraction:(double)arg1 {
    // Reduce Dock Height: (No/Stock=D)
    arg1 = 0.055;
    %orig;
}
%end

%hook SBIconView
- (id)_legibilitySettingsWithStyle:(long long)arg1 primaryColor:(id)arg2 {
    arg2 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0/255.0];
    return %orig;
}
%end

%hook SBMutableIconLabelImageParameters
- (void)setAccessibilityIncreaseContrastEnabled:(bool)arg1 {
    arg1 = 1;
    %orig;
}
%end

