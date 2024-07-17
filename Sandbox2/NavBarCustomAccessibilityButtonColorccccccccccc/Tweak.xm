#import <UIKit/UIKit.h>

%hook UINavigationItemButtonView
- (void)_setAccessibilityBackgroundTintColor:(id)arg1 {
    // Set Color... (Back)
    arg1 = [UIColor colorWithRed:211/255.0 green:229/255.0 blue:249/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook UINavigationButton
- (void)_setAccessibilityBackgroundTintColor:(id)arg1 {
    // Set Color... (Standard)
    arg1 = [UIColor colorWithRed:211/255.0 green:229/255.0 blue:249/255.0 alpha:255/255.0];
    %orig;
}
%end

