#import <UIKit/UIKit.h>

%hook SBLockHardwareButton
- (bool)gestureRecognizerShouldBegin:(id)arg1 {
    return 0;
}
%end

