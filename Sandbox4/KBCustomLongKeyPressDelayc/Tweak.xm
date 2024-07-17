#import <UIKit/UIKit.h>

%hook UIKeyboardImpl
- (void)touchLongPressTimerWithDelay:(double)arg1 {
    // Set Delay... (0.0-1.0)
    arg1 = 0.25;
    %orig;
}
%end

