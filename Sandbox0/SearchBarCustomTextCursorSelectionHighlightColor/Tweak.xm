#import <UIKit/UIKit.h>

%hook _UICascadingTextStorage
- (void)setTextColor:(id)arg1 {
    // Text Input Color
    arg1 = [UIColor colorWithRed:255/255.0 green:127/255.0 blue:0/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook UITextInputTraits
- (void)_setColorsToMatchTintColor:(id)arg1 {
    // Cursor & Text Selection Highlight Color
    arg1 = [UIColor colorWithRed:255/255.0 green:127/255.0 blue:0/255.0 alpha:255/255.0];
    %orig;
}
%end

