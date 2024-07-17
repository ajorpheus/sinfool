#import <UIKit/UIKit.h>

%hook SBLockScreenView
- (void)setCustomSlideToUnlockText:(id)arg1 {
    // ...set Custom Text
    arg1 = @"Flex 2";
    %orig;
}
%end

