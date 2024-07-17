#import <UIKit/UIKit.h>

%hook _UIPopoverStandardChromeView
- (void)setPopoverBackgroundColor:(id)arg1 {
    // Background: Set Color...
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:190/255.0];
    %orig;
}
%end

%hook _UIActivityGroupListViewController
- (bool)darkStyleOnLegacyApp {
    // AirDrop Text: (White=T, Black=F)
    return 1;
}
%end

%hook UIActivityGroupViewController
- (bool)darkStyleOnLegacyApp {
    // Group Items Text: (White=T, Black=F)
    return 1;
}
%end

%hook _UIActivityGroupActivityCellTitleLabel
- (void)setTextColor:(id)arg1 {
    // Group Items Text: Set Custom Color... (NOTE: Overrides Above So If Just Using Black Or White Text Then You Can Delete This)
    arg1 = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:255/255.0];
    %orig;
}
%end

