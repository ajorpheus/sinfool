#import <UIKit/UIKit.h>

%hook SBLockScreenDateViewController
- (void)setCustomSubtitleText:(id)arg1 withColor:(id)arg2 {
    // (Argument #1): Text  (Argument #2): Color
    arg1 = @"Flex";
    arg2 = [UIColor colorWithRed:114/255.0 green:16/255.0 blue:238/255.0 alpha:255/255.0];
    %orig;
}
%end

