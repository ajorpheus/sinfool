#import <UIKit/UIKit.h>

%hook PSSearchController
- (void)setSearchBarVisible:(bool)arg1 animated:(bool)arg2 {
    // Search Bar - Show On Open: (Yes=T, No=F)
    arg1 = 1;
    %orig;
}
%end

%hook UISearchBarBackground
- (id)_createBackgroundImageForBarStyle:(long long)arg1 alpha:(double)arg2 {
    // Search Bar - BG Alpha: (Arg#2): (Range=0.0-1.0)
    arg2 = 0;
    return %orig;
}
%end

%hook PSUIPrefsListController
- (double)tableView:(id)arg1 heightForHeaderInSection:(long long)arg2 {
    // Top Header - Hide/Combine Sections: (Return Value): (Yes=0, No=P)
    return 0;
}
%end

%hook UITableView
- (double)sectionHeaderHeight {
    // Section Gaps (Top Space) - Hide/Combine Sections: (Yes=0, No=P)
    return 0;
}
%end

%hook UITableView
- (double)sectionFooterHeight {
    // Section Gaps (Bottom Space) - Hide/Combine Sections: (Yes=0, No=P)
    return 0;
}
%end

%hook UIGroupTableViewCellBackground
- (void)setSelectionTintColor:(id)arg1 {
    // Cells - Selected BG: Color
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:38/255.0];
    %orig;
}
%end

%hook UITableViewLabel
- (id)highlightedTextColor {
    // Cells - Selected Text: Color
    return [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:255/255.0];
}
%end

%hook _UIGroupTableViewCellBackgroundImageKey
- (int)sectionLocation {
    // Cells - Corners Shape: (Round=0, Square=1, Round Top=2, Round Bottom=3, Default/Round Top & Bottom=P)
    return 0;
}
%end

%hook _UIGroupTableViewCellBackgroundImageKey
- (void)setSectionBorderWidth:(double)arg1 {
    // Cells - Border Width: (Higher # = Smaller Size) (Best Range=0.0-10.0)
    arg1 = 4;
    %orig;
}
%end

%hook UIDevice
- (void)setOrientation:(long long)arg1 animated:(bool)arg2 {
    // Disable Rotation Animation: (Yes=F, No=T)
    arg2 = 0;
    %orig;
}
%end

%hook UITableView
- (void)setSeparatorStyle:(long long)arg1 {
    arg1 = 0;
    %orig;
}
%end

%hook PSListController
- (bool)_isRegularWidth {
    return 0;
}
%end

