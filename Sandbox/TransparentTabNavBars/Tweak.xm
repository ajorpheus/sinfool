#import <UIKit/UIKit.h>

%hook UIStatusBarForegroundStyleAttributes
- (id)initWithHeight:(double)arg1 legibilityStyle:(long long)arg2 tintColor:(id)arg3 hasBusyBackground:(bool)arg4 idiom:(long long)arg5 {
    // Set Status Bar Color... (Arg#3)
    arg3 = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:255/255.0];
    return %orig;
}
%end

%hook _UIBarBackground
- (id)_blurWithStyle:(long long)arg1 tint:(id)arg2 {
    arg1 = -1;
    return %orig;
}
%end

