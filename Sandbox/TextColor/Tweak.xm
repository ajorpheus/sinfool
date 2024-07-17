#import <UIKit/UIKit.h>

%hook NoteDateLabel
- (void)setTextColor:(id)arg1 {
    // Set Date Text Color...
    arg1 = [UIColor colorWithRed:255/255.0 green:127/255.0 blue:0/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook NoteTextView
- (void)setTextColor:(id)arg1 {
    // Set Text Color...
    arg1 = [UIColor colorWithRed:113/255.0 green:33/255.0 blue:147/255.0 alpha:255/255.0];
    %orig;
}
%end

