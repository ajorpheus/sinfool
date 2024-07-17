#import <UIKit/UIKit.h>

%hook UIKeyboardImpl
- (void)setCaretVisible:(BOOL)arg1 {
    // Visibility
    arg1 = 1;
    %orig;
}
%end

%hook UIKeyboardImpl
- (void)setCaretBlinks:(BOOL)arg1 {
    // Blinks
    arg1 = 0;
    %orig;
}
%end

%hook UITextInputTraits
- (void)setInsertionPointColor:(id)arg1 {
    // Color
    arg1 = [UIColor colorWithRed:0/255.0 green:122/255.0 blue:255/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook UITextInputTraits
- (void)setSelectionBarColor:(id)arg1 {
    // Color (Text Selection Bars)
    arg1 = [UIColor colorWithRed:0/255.0 green:122/255.0 blue:255/255.0 alpha:255/255.0];
    %orig;
}
%end

