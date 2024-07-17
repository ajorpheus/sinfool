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

%hook UITableView
- (void)setSeparatorStyle:(long long)arg1 {
    // Separators - Visibility: (Hide=0, Show=1)
    arg1 = 1;
    %orig;
}
%end

%hook UIGroupTableViewCellBackground
- (void)setSelected:(bool)arg1 {
    // Cells - Selected BG: Visibility: (Hide=F, Show=T, Stock=D)
    arg1 = 1;
    %orig;
}
%end

%hook UIGroupTableViewCellBackground
- (void)setSelectionTintColor:(id)arg1 {
    // Cells - Selected BG: Custom Color (Primary & Secondary): (Stock=D)
    arg1 = [UIColor colorWithRed:76/255.0 green:162/255.0 blue:255/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook UITableViewLabel
- (id)highlightedTextColor {
    // Cells - Selected Text: Custom Color: (Stock=P)
    return [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:255/255.0];
}
%end

%hook PSListController
- (void)setEdgeToEdgeCells:(bool)arg1 {
    arg1 = 0;
    %orig;
}
%end

%hook PSListController
- (bool)_isRegularWidth {
    return 0;
}
%end

