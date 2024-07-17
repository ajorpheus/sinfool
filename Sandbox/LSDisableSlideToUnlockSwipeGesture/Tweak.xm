#import <UIKit/UIKit.h>

%hook SBLockScreenScrollView
- (bool)gestureRecognizer:(id)arg1 shouldReceiveTouch:(id)arg2 {
    return 0;
}
%end

