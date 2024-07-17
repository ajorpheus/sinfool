#import <UIKit/UIKit.h>

%hook UIButton
- (void)setTintColor:(id)arg1 {
    // Camera & Mic Buttons
    arg1 = [UIColor colorWithRed:0/255.0 green:122/255.0 blue:255/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook _UITextFieldRoundedRectBackgroundViewNeue
- (void)setFillColor:(id)arg1 {
    // Text Input Field BG
    arg1 = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook _UITextFieldRoundedRectBackgroundViewNeue
- (void)setStrokeColor:(id)arg1 {
    // Text Input Field Border
    arg1 = [UIColor colorWithRed:0/255.0 green:122/255.0 blue:255/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook UITextInputTraits
- (void)setInsertionPointColor:(id)arg1 {
    // Blinking Caret
    arg1 = [UIColor colorWithRed:0/255.0 green:122/255.0 blue:255/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook UITextInputTraits
- (void)setSelectionBarColor:(id)arg1 {
    // Text Selection Bars
    arg1 = [UIColor colorWithRed:0/255.0 green:122/255.0 blue:255/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook UIMorphingLabel
- (void)setTextColor:(id)arg1 {
    // Predictive Text
    arg1 = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook UILabel
- (void)setHighlightedTextColor:(id)arg1 {
    // Highlighted Text
    arg1 = [UIColor colorWithRed:0/255.0 green:122/255.0 blue:255/255.0 alpha:255/255.0];
    %orig;
}
%end

