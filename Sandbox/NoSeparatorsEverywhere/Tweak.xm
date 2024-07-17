#import <UIKit/UIKit.h>

%hook SPUINavigationBar
- (void)showSeparator:(bool)arg1 animated:(bool)arg2 {
    // NC/Spotlight - Top Separator
    arg1 = 0;
    %orig;
}
%end

%hook UITableView
- (void)setSeparatorStyle:(long long)arg1 {
    // Apps - Table View Separators
    arg1 = 0;
    %orig;
}
%end

%hook _UIAlertControllerInterfaceActionGroupView
- (bool)_shouldShowSeparatorAboveActionsSequenceView {
    // Alerts - Top Separator
    return 0;
}
%end

%hook UICalloutBarButton
- (void)setDividerOffset:(double)arg1 {
    // Action/Edit Menu - Button Separators
    arg1 = 0;
    %orig;
}
%end

