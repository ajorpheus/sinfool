#import <UIKit/UIKit.h>

%hook UIKeyboardImpl
- (bool)returnKeyEnabled {
    // Enables Return Key
    return 0;
}
%end

%hook UIKeyboardLayoutStar
- (void)setReturnKeyEnabled:(bool)arg1 withDisplayName:(id)arg2 withType:(int)arg3 {
    // (Arg#1): Highlight Return Text (FALSE=Disables Key), (Arg#2): Custom Text, (Arg#3): Type/Color: 0=stock, 1=blue
    arg1 = 1;
    %orig;
}
%end

