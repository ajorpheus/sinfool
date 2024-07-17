#import <UIKit/UIKit.h>

%hook UIStatusBarNewUIStyleAttributes
- (id)initWithRequest:(id)arg1 backgroundColor:(id)arg2 foregroundColor:(id)arg3 hasBusyBackground:(bool)arg4 {
    // Set Color... (Arg#3)
    arg3 = [UIColor colorWithRed:255/255.0 green:127/255.0 blue:0/255.0 alpha:255/255.0];
    return %orig;
}
%end

