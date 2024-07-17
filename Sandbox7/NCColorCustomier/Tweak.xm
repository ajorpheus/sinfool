#import <UIKit/UIKit.h>

%hook SBNotificationCenterViewController
- (bool)blursBackground {
    // Background: Blur=TRUE, Gray=FALSE
    return 0;
}
%end

%hook SBUISizeObservingView
- (void)setBackgroundColor:(id)arg1 {
    // Sections Background
    arg1 = [UIColor colorWithRed:18/255.0 green:112/255.0 blue:112/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook SBControlColorSettings
- (id)initWithTintColor:(id)arg1 selectedTintColor:(id)arg2 textColor:(id)arg3 selectedTextColor:(id)arg4 {
    // (Arg#1): Tab (Arg#2): Selected Tab (Arg#3): Text (Arg#4): Selected Text
    arg1 = [UIColor colorWithRed:22/255.0 green:140/255.0 blue:140/255.0 alpha:255/255.0];
    arg2 = [UIColor colorWithRed:35/255.0 green:218/255.0 blue:218/255.0 alpha:255/255.0];
    arg3 = [UIColor colorWithRed:35/255.0 green:218/255.0 blue:218/255.0 alpha:255/255.0];
    arg4 = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:255/255.0];
    return %orig;
}
%end

%hook SBNotificationSeparatorView
- (void)setBackgroundColor:(id)arg1 {
    // Top & Bottom Separators
    arg1 = [UIColor colorWithRed:22/255.0 green:140/255.0 blue:140/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook _UITableViewHeaderFooterContentView
- (void)setBackgroundColor:(id)arg1 {
    // Headers
    arg1 = [UIColor colorWithRed:18/255.0 green:112/255.0 blue:112/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook _UITableViewCellSeparatorView
- (void)setBackgroundColor:(id)arg1 {
    // Cell Separators
    arg1 = [UIColor colorWithRed:22/255.0 green:140/255.0 blue:140/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook SBChevronView
- (void)setColor:(id)arg1 {
    // Grabber
    arg1 = [UIColor colorWithRed:22/255.0 green:140/255.0 blue:140/255.0 alpha:255/255.0];
    %orig;
}
%end

