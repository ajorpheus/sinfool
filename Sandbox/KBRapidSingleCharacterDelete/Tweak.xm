#import <UIKit/UIKit.h>

%hook UIKeyboardImpl
- (void)touchAutoDeleteTimerWithThreshold:(double)arg1 {
    // ...set Speed (lower #=faster)
    arg1 = 0.09;
    %orig;
}
%end

