#import <UIKit/UIKit.h>

%hook _UILegibilitySettings
- (void)setPrimaryColor:(id)arg1 {
    // PRIMARY COLOR:  Status Bar, Clock/Date, Page Dot (selected), Icon Labels & ~some tweaks i.e. Forecast~
    arg1 = [UIColor colorWithRed:255/255.0 green:127/255.0 blue:0/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook _UILegibilitySettings
- (void)setSecondaryColor:(id)arg1 {
    // SECONDARY COLOR:  NC/CC/Camera Grabbers & Page Dots (unselected)
    arg1 = [UIColor colorWithRed:114/255.0 green:17/255.0 blue:153/255.0 alpha:255/255.0];
    %orig;
}
%end

