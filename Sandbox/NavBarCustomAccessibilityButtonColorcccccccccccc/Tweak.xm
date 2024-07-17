#import <UIKit/UIKit.h>

%hook UINavigationItemButtonView
- (void)_setAccessibilityBackgroundTintColor:(id)arg1 {
    // Set Color... (Back)
    arg1 = [UIColor colorWithRed:207/255.0 green:226/255.0 blue:245/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook UINavigationButton
- (void)_setAccessibilityBackgroundTintColor:(id)arg1 {
    // Set Color... (Standard)
    arg1 = [UIColor colorWithRed:207/255.0 green:226/255.0 blue:245/255.0 alpha:255/255.0];
    %orig;
}
%end

