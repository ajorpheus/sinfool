#import <UIKit/UIKit.h>

%hook UIGroupTableViewCellBackground
- (void)setSelectionTintColor:(id)arg1 {
    // Set Color #1...
    arg1 = [UIColor colorWithRed:255/255.0 green:127/255.0 blue:0/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook UITableViewCellSelectedBackground
- (void)setSelectionTintColor:(id)arg1 {
    // Set Color #2...
    arg1 = [UIColor colorWithRed:255/255.0 green:127/255.0 blue:0/255.0 alpha:255/255.0];
    %orig;
}
%end

