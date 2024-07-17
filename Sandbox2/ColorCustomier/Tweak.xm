#import <UIKit/UIKit.h>

%hook SBLockScreenView
- (BOOL)legibilitySettingsOverrideVibrancy {
    return 1;
}
%end

%hook _UILegibilitySettings
- (void)setPrimaryColor:(id)arg1 {
    // ...set Primary Color >>> Status Bar, LS Clock/Date, Page Dots (selected), Icon Labels
    arg1 = [UIColor colorWithRed:35/255.0 green:218/255.0 blue:218/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook _UILegibilitySettings
- (void)setSecondaryColor:(id)arg1 {
    // ...set Secondary Color >>> LS Grabbers, Page Dots (unselected)
    arg1 = [UIColor colorWithRed:18/255.0 green:112/255.0 blue:112/255.0 alpha:255/255.0];
    %orig;
}
%end

