#import <UIKit/UIKit.h>

%hook UIStatusBarBackgroundView
- (void)setBackgroundColor:(id)arg1 {
    // BG Color
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:63/255.0];
    %orig;
}
%end

%hook UIStatusBarNewUIDoubleHeightStyleAttributes
- (id)initWithRequest:(id)arg1 backgroundColor:(id)arg2 foregroundColor:(id)arg3 hasBusyBackground:(bool)arg4 {
    // (Arg#3): Text Color
    arg3 = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:255/255.0];
    return %orig;
}
%end

