#import <UIKit/UIKit.h>

%hook _UIVisualEffectFilterView
- (void)setBackgroundColor:(id)arg1 {
    // Alerts/Search Bar - BG Color
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:175/255.0];
    %orig;
}
%end

%hook UIAlertControllerVisualStyleAlert
- (id)titleLabelColor {
    // Alerts - Title Color
    return [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:255/255.0];
}
%end

%hook UIAlertControllerVisualStyleAlert
- (id)messageLabelColor {
    // Alerts - Message Text Color
    return [UIColor colorWithRed:187/255.0 green:187/255.0 blue:187/255.0 alpha:255/255.0];
}
%end

%hook UIAlertControllerVisualStyleActionSheet
- (id)titleLabelColor {
    // Action Sheet - Title Color
    return [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:255/255.0];
}
%end

%hook UIAlertControllerVisualStyleActionSheet
- (id)messageLabelColor {
    // Action Sheet - Message Text Color
    return [UIColor colorWithRed:187/255.0 green:187/255.0 blue:187/255.0 alpha:255/255.0];
}
%end

%hook _UIAlertControllerInterfaceActionGroupView
- (bool)_shouldShowSeparatorAboveActionsSequenceView {
    // Alerts/Action Sheets - No Separators (Top)
    return 0;
}
%end

%hook _UIAlertControllerView
- (void)setCancelActionIsDiscrete:(bool)arg1 {
    // Alerts/action Sheets - Merge Cancel Button: (Yes=F)
    arg1 = 0;
    %orig;
}
%end

%hook SPUITextField
- (void)updateWithColor:(id)arg1 {
    // Spotlight - Search Bar Text Color
    arg1 = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook UIButtonContent
- (void)setTitleColor:(id)arg1 {
    // Spotlight - Button Text Color
    arg1 = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook _UIGroupTableViewCellBackgroundImageKey
- (void)setFillColor:(id)arg1 {
    // Spotlight - Cell BG Color
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:127/255.0];
    %orig;
}
%end

