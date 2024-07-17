#import <UIKit/UIKit.h>

%hook UIStatusBarNewUIStyleAttributes
- (id)initWithRequest:(id)arg1 backgroundColor:(id)arg2 foregroundColor:(id)arg3 hasBusyBackground:(bool)arg4 {
    // Status Bar Background: (Arg#2), Status Bar Foreground: (Arg#3)
    arg3 = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:255/255.0];
    arg2 = [UIColor colorWithRed:35/255.0 green:35/255.0 blue:35/255.0 alpha:255/255.0];
    return %orig;
}
%end

%hook YTAppView
- (void)setStatusBarBackgroundColor:(id)arg1 {
    // Status Bar Background #2: (in switcher)
    arg1 = [UIColor colorWithRed:35/255.0 green:35/255.0 blue:35/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook _UINavigationBarBackground
- (void)setBackgroundColor:(id)arg1 {
    // Nav Bar
    arg1 = [UIColor colorWithRed:35/255.0 green:35/255.0 blue:35/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook YTNavigationBar
- (void)setBackgroundColor:(id)arg1 {
    // Nav Bar #2 (& SB BG in Switcher)
    arg1 = [UIColor colorWithRed:35/255.0 green:35/255.0 blue:35/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook YTTitleBar_iPad
- (void)setThemeColor:(id)arg1 foregroundColor:(id)arg2 animated:(bool)arg3 {
    // [iPads] Nav Bar: (Arg#1)	Left Text: (Arg#2)
    arg1 = [UIColor colorWithRed:35/255.0 green:35/255.0 blue:35/255.0 alpha:255/255.0];
    arg2 = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook YTRightNavigationButtons
- (void)setTintColor:(id)arg1 {
    // Right Buttons
    arg1 = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook YTTabTitlesView
- (void)setBackgroundColor:(id)arg1 {
    // Lower Tab Buttons
    arg1 = [UIColor colorWithRed:35/255.0 green:35/255.0 blue:35/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook YTTabTitlesView
- (void)setTabStyle:(long long)arg1 {
    // Lower Tab Style: (0=White Blur, 1=Stock, 2=Transparent)
    arg1 = 1;
    %orig;
}
%end

%hook YTTabTitlesView
- (void)setTabTitleColor:(id)arg1 {
    // Lower Tab Bar Selected
    arg1 = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook UIStatusBarNewUIStyleAttributes
- (bool)isTranslucent {
    return 1;
}
%end

