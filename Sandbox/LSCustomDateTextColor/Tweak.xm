#import <UIKit/UIKit.h>

%hook SBLockScreenDateViewController
- (void)setCustomSubtitleText:(id)arg1 withColor:(id)arg2 {
    // (Arg#1): Custom Date Text (Arg#2): Color
    arg1 = @"Flex 2";
    arg2 = [UIColor colorWithRed:255/255.0 green:127/255.0 blue:0/255.0 alpha:255/255.0];
    %orig;
}
%end

