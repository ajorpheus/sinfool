#import <UIKit/UIKit.h>

%hook SBDashBoardViewController
- (long long)statusBarStyle {
    // LS - Same Status: (Yes=0, No=P)
    return 0;
}
%end

%hook UIStatusBarNewUIDoubleHeightStyleAttributes
- (id)initWithRequest:(id)arg1 backgroundColor:(id)arg2 foregroundColor:(id)arg3 hasBusyBackground:(bool)arg4 {
    // (Arg#2): Background Color, (Arg#3): Text Color
    arg2 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:63/255.0];
    arg3 = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:255/255.0];
    return %orig;
}
%end

