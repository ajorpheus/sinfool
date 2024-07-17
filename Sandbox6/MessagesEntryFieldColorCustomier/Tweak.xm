#import <UIKit/UIKit.h>

%hook CKMessageEntryView
- (void)setBackgroundColor:(id)arg1 {
    // Bar - BG Color
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:190/255.0];
    %orig;
}
%end

%hook CKMessageEntryView
- (void)setShouldHideBackgroundView:(bool)arg1 {
    // Bar - BG Blur Visibility: (Hide=T, Show=F) NOTE: Entry Field Style Can Effect Appearance
    arg1 = 1;
    %orig;
}
%end

%hook CKMessageEntryContentView
- (void)setBackgroundColor:(id)arg1 {
    // Entry Field - BG Color
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0/255.0];
    %orig;
}
%end

%hook CKUIBehavior
- (double)entryFieldCoverLineWidth {
    // Entry Field - Border Visibilty: (Hide=0, Show=P)
    return 0;
}
%end

%hook CKEntryViewButton
- (void)setCkTintColor:(id)arg1 {
    // Entry Field - Buttons Color: (Set Color or Stock=D)
    arg1 = [UIColor colorWithRed:160/255.0 green:160/255.0 blue:160/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook CKMessageEntryView
- (void)setStyle:(long long)arg1 {
    // Entry Field - Style: (White Input Text=1, White BG w/Black Input Text=4)
    arg1 = 1;
    %orig;
}
%end

%hook CKMessageEntryContentView
- (void)setPlaceholderText:(id)arg1 {
    // Entry Field - Custom Placeholder Text: (Set Text or Stock=D)
    arg1 = @"Write a message...";
    %orig;
}
%end

