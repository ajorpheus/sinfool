#import <UIKit/UIKit.h>

%hook UIStatusBarNewUIForegroundStyleAttributes
- (id)initWithHeight:(float)arg1 legibilityStyle:(int)arg2 tintColor:(id)arg3 backgroundColor:(id)arg4 {
    // Status Bar Text (to disable, set to passthrough)
    arg3 = [UIColor colorWithRed:38/255.0 green:118/255.0 blue:215/255.0 alpha:255/255.0];
    return %orig;
}
%end

%hook UITableView
- (void)setBackgroundColor:(id)arg1 {
    // Background
    arg1 = [UIColor colorWithRed:57/255.0 green:109/255.0 blue:167/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook UITableViewCellSelectedBackground
- (void)setSelectionTintColor:(id)arg1 {
    // Cell Selected
    arg1 = [UIColor colorWithRed:182/255.0 green:200/255.0 blue:223/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook UITableView
- (void)setSeparatorColor:(id)arg1 {
    // Separator Lines
    arg1 = [UIColor colorWithRed:57/255.0 green:109/255.0 blue:167/255.0 alpha:255/255.0];
    %orig;
}
%end

