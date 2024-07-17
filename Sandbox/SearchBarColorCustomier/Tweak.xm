#import <UIKit/UIKit.h>

%hook UISearchBarBackground
- (void)setBackgroundColor:(id)arg1 {
    // (Search Bar) - BG Color (⚠️: To Work, Requires BG Alpha = "0"): Set Color or "P" for stock...
    arg1 = [UIColor colorWithRed:29/255.0 green:29/255.0 blue:29/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook UISearchBarBackground
- (id)_createBackgroundImageForBarStyle:(long long)arg1 alpha:(double)arg2 {
    // (Search Bar) - BG Style & Alpha (⚠️: If Alpha Used, Overrides Style): (Style-Arg#1): Dark=1, Stock=P (Alpha-Arg#2): Range: 0.0-1.0
    arg2 = 0;
    return %orig;
}
%end

%hook _UISearchBarSearchFieldBackgroundView
- (void)setFillColor:(id)arg1 {
    // (Text Field BG) - Color (⚠️: If Used, Overrides Styles Below): Set Color or "P" for stock/to use styles...
    arg1 = [UIColor colorWithRed:18/255.0 green:18/255.0 blue:18/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook UISearchBarTextFieldLabel
- (void)setTextColor:(id)arg1 {
    // (Text Field) - Placeholder Text Color: Set Color or "D" for stock...
    arg1 = [UIColor colorWithRed:142/255.0 green:142/255.0 blue:147/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook _UICascadingTextStorage
- (void)setTextColor:(id)arg1 {
    // (Text Field) - Input Text Color
    arg1 = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:255/255.0];
    %orig;
}
%end

