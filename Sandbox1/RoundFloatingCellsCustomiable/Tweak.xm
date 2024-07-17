#import <UIKit/UIKit.h>

%hook UITableView
- (void)setBackgroundColor:(id)arg1 {
    // Set Color... (Table View Background)
    arg1 = [UIColor colorWithRed:200/255.0 green:200/255.0 blue:200/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook _UIGroupTableViewCellBackgroundImageKey
- (void)setBackgroundColor:(id)arg1 {
    // Set Color.... (Grouped Cells Background)
    arg1 = [UIColor colorWithRed:200/255.0 green:200/255.0 blue:200/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook UISearchBarBackground
- (id)_createBackgroundImageForBarStyle:(int)arg1 alpha:(float)arg2 {
    // Search Bar Background Alpha: {(Arg#2): Range: 0.0-1.0}
    arg2 = 0;
    return %orig;
}
%end

%hook UITableView
- (bool)_shouldShowHeadersAndFooters {
    // Show Top Header
    return 0;
}
%end

%hook UITableView
- (double)_defaultSectionHeaderHeight {
    // Show Section Headers: {NO=0, YES=pass-through}
    return 0;
}
%end

%hook UITableView
- (double)_defaultSectionFooterHeight {
    // Show Section Footers: {NO=0, YES=pass-through}
    return 0;
}
%end

%hook _UIGroupTableViewCellBackgroundImageKey
- (void)setSectionBorderWidth:(double)arg1 {
    // Round Cell Size: {Best Range: 0.0-10.0 (Higher # = Smaller Size)}
    arg1 = 4.75;
    %orig;
}
%end

%hook _UIGroupTableViewCellBackgroundImageKey
- (void)setSectionLocation:(int)arg1 {
    arg1 = 0;
    %orig;
}
%end

%hook UITableViewCell
- (bool)_insetsBackground {
    return 1;
}
%end

%hook UITableViewCell
- (void)_setOpaque:(bool)arg1 forSubview:(id)arg2 {
    arg1 = 0;
    %orig;
}
%end

%hook UIView
- (id)backgroundColor {
    return NULL;
}
%end

