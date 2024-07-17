#import <UIKit/UIKit.h>

%hook UIKeyboardImpl
- (void)touchAutoDeleteTimerWithThreshold:(double)arg1 adjustForPartialCompletion:(bool)arg2 {
    // ...set Speed (lower #=faster)
    arg1 = 0.04;
    %orig;
}
%end

