#import <UIKit/UIKit.h>

%hook _UIActivityGroupListViewController
- (bool)darkStyleOnLegacyApp {
    // Make AirDrop Text White: {YES=TRUE, NO=pass-through}
    return 1;
}
%end

%hook UIActivityGroupViewController
- (bool)darkStyleOnLegacyApp {
    // Make Group Items Text White: {YES=TRUE, NO=pass-through}
    return 1;
}
%end

%hook _UIActivityGroupActivityCellTitleLabel
- (void)setTextColor:(id)arg1 {
    // Set Custom Group Items Text Color...
    arg1 = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:255/255.0];
    %orig;
}
%end

