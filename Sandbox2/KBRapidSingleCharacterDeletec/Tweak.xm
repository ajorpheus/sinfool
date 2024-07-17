#import <UIKit/UIKit.h>

%hook UIKeyboardImpl
- (void)touchAutoDeleteTimerWithThreshold:(double)arg1 {
    // Set number... (lower #=faster)
    arg1 = 0.1;
    %orig;
}
%end

