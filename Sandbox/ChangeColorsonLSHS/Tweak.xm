#import <UIKit/UIKit.h>

%hook _UILegibilitySettings
- (void)setPrimaryColor:(id)arg1 {
    // Set Primary Color...  [Status Bar • LS Clock/Date • Page Dots (Selected) • Icon Labels]
    arg1 = [UIColor colorWithRed:35/255.0 green:218/255.0 blue:218/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook _UILegibilitySettings
- (void)setSecondaryColor:(id)arg1 {
    // Set Secondary Color...  [Top/Bottom & Camera Grabbers • Page Dots (Unselected)]
    arg1 = [UIColor colorWithRed:18/255.0 green:112/255.0 blue:112/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook SBLockScreenView
- (bool)legibilitySettingsOverrideVibrancy {
    // Legibility Settings Override Vibrancy
    return 1;
}
%end

