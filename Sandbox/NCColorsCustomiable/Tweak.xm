#import <UIKit/UIKit.h>

%hook SBNotificationCenterViewController
- (bool)blursBackground {
    // Background:  Stock=pass-through, Gray=FALSE
    return 0;
}
%end

%hook SBUISizeObservingView
- (void)setBackgroundColor:(id)arg1 {
    // Sections Background
    arg1 = [UIColor colorWithRed:98/255.0 green:52/255.0 blue:85/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook SBControlColorSettings
- (id)initWithTintColor:(id)arg1 selectedTintColor:(id)arg2 textColor:(id)arg3 selectedTextColor:(id)arg4 {
    // Segment Section:	(Arg#1): Tint Color (Arg#2): Selected Tint Color (Arg#3): Text Color (Arg#4): Selected Text Color
    arg1 = [UIColor colorWithRed:69/255.0 green:43/255.0 blue:54/255.0 alpha:255/255.0];
    arg3 = [UIColor colorWithRed:147/255.0 green:83/255.0 blue:135/255.0 alpha:255/255.0];
    arg2 = [UIColor colorWithRed:255/255.0 green:144/255.0 blue:235/255.0 alpha:255/255.0];
    arg4 = [UIColor colorWithRed:200/255.0 green:192/255.0 blue:195/255.0 alpha:255/255.0];
    return %orig;
}
%end

%hook SBNotificationSeparatorView
- (void)setBackgroundColor:(id)arg1 {
    // Top & Bottom Separator
    arg1 = [UIColor colorWithRed:255/255.0 green:144/255.0 blue:235/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook _UITableViewHeaderFooterContentView
- (void)setBackgroundColor:(id)arg1 {
    // Headers
    arg1 = [UIColor colorWithRed:84/255.0 green:58/255.0 blue:69/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook _UITableViewCellSeparatorView
- (void)setBackgroundColor:(id)arg1 {
    // Cell Separator
    arg1 = [UIColor colorWithRed:255/255.0 green:144/255.0 blue:235/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook SBTodayViewController
- (id)todayTableFooterView {
    // Hides Weather/Stocks™ Footer:  Show=pass-through
    return NULL;
}
%end

%hook SBChevronView
- (void)setColor:(id)arg1 {
    // Grabber Color/Visibility:  Set Color, Hide=pass-through or Stock View=DELETE THIS ENTRY  [Note: Applies to ALL grabbers]
    arg1 = [UIColor colorWithRed:134/255.0 green:69/255.0 blue:97/255.0 alpha:255/255.0];
    %orig;
}
%end

