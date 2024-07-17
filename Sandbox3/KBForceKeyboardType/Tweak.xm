#import <UIKit/UIKit.h>

%hook UITextInputTraits
- (long long)keyboardType {
    // Keyboard Type:	(see suggestions above)
    return 10;
}
%end

%hook UIKeyboardLayoutStar
- (void)setReturnKeyEnabled:(bool)arg1 withDisplayName:(id)arg2 withType:(int)arg3 {
    // Custom Return Key/Type:  (Arg#2): Custom Text (Arg#3): Force Key Type: 0=Standard, 1=Blue, pass-through=Stock
    arg2 = @"®";
    arg3 = 0;
    %orig;
}
%end

