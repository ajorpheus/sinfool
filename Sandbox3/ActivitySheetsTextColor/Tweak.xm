#import <UIKit/UIKit.h>

%hook _UIActivityGroupListViewController
- (bool)darkStyleOnLegacyApp {
    // AirDrop Text: (White=T, Black=P)
    return 1;
}
%end

%hook UIActivityGroupViewController
- (bool)darkStyleOnLegacyApp {
    // Group Items Text: (White=T, Black=P)
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

