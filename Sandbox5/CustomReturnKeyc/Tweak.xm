#import <UIKit/UIKit.h>

%hook UIKeyboardLayoutStar
- (void)setReturnKeyEnabled:(bool)arg1 withDisplayName:(id)arg2 withType:(int)arg3 {
    // Enable Button: (Arg#1)=T or F; Custom Text: (Arg#2); Button Type: (Arg#3) Stock=pass-through, Blue=1
    arg1 = 1;
    arg2 = @"®";
    %orig;
}
%end

