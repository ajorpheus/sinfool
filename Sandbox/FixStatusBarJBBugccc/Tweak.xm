#import <UIKit/UIKit.h>

%hook UIStatusBarNewUIForegroundStyleAttributes
- (id)initWithHeight:(float)arg1 legibilityStyle:(int)arg2 tintColor:(id)arg3 backgroundColor:(id)arg4 {
    // White Elements for Status Bar
    arg3 = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:255/255.0];
    return %orig;
}
%end

