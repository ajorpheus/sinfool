#import <UIKit/UIKit.h>

%hook UIKeyboardImpl
- (void)setKeyboardInputMode:(id)arg1 userInitiated:(bool)arg2 updateIndicator:(bool)arg3 executionContext:(id)arg4 {
    arg3 = 0;
    %orig;
}
%end

