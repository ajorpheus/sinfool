#import <UIKit/UIKit.h>

%hook UISearchBar
- (id)_imageForSearchBarIcon:(long long)arg1 state:(unsigned long long)arg2 customImage:(bool*)arg3 {
    // Search Icon (Return Value): (Hide=N, Show=P)
    return NULL;
}
%end

%hook UISearchBarTextFieldLabel
- (void)setText:(id)arg1 {
    // Set Custom Placeholder Text...
    arg1 = @"🔍";
    %orig;
}
%end

%hook UISearchBarTextFieldLabel
- (void)setTextColor:(id)arg1 {
    // Set Custom Placeholder Text Color...
    arg1 = [UIColor colorWithRed:142/255.0 green:142/255.0 blue:147/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook UISearchBarBackground
- (id)_createBackgroundImageForBarStyle:(long long)arg1 alpha:(double)arg2 {
    // BG Alpha (Arg#2): (Range 0.0-1.0, Hide=0, Default=P)
    arg2 = 0;
    return %orig;
}
%end

