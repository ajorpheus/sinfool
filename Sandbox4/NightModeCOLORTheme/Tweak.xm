#import <UIKit/UIKit.h>

%hook UIStatusBarNewUIForegroundStyleAttributes
- (id)initWithHeight:(float)arg1 legibilityStyle:(int)arg2 tintColor:(id)arg3 backgroundColor:(id)arg4 {
    // Status Bar Text COLOR  (pass-through=No Status Bar Text)
    arg3 = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:255/255.0];
    return %orig;
}
%end

%hook UINavigationBar
- (void)_setBarStyle:(int)arg1 {
    // Navigation Bar Style  (-1=Black, 0=Grey, 1=Blur)
    arg1 = -1;
    %orig;
}
%end

%hook UITableViewCell
- (BOOL)_backgroundColorSet {
    // -
    return 1;
}
%end

%hook UITableView
- (void)setBackgroundColor:(id)arg1 {
    // Background COLOR
    arg1 = [UIColor colorWithRed:21/255.0 green:21/255.0 blue:21/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook UITableViewCellSelectedBackground
- (void)setSelectionTintColor:(id)arg1 {
    // Cell Selected COLOR
    arg1 = [UIColor colorWithRed:73/255.0 green:73/255.0 blue:73/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook UITableView
- (void)setSeparatorColor:(id)arg1 {
    // Separator COLOR  (pass-through=No Separators)
    arg1 = [UIColor colorWithRed:44/255.0 green:44/255.0 blue:44/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook UILabel
- (BOOL)isEnabled {
    // -
    return 0;
}
%end

%hook UITextInputTraits
- (int)keyboardAppearance {
    // Keyboard  (0=Standard, 1=Dark)
    return 1;
}
%end

