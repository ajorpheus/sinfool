#import <UIKit/UIKit.h>

%hook UILabel
- (void)setTextColor:(id)arg1 {
    // Labels
    arg1 = [UIColor colorWithRed:255/255.0 green:127/255.0 blue:0/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook UILabel
- (void)setHighlightedTextColor:(id)arg1 {
    // Highlighted
    arg1 = [UIColor colorWithRed:249/255.0 green:6/255.0 blue:129/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook _UICascadingTextStorage
- (void)setTextColor:(id)arg1 {
    // Folder Titles, Input Fields etc.
    arg1 = [UIColor colorWithRed:187/255.0 green:7/255.0 blue:250/255.0 alpha:255/255.0];
    %orig;
}
%end

