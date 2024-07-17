#import <UIKit/UIKit.h>

%hook SBLockScreenBounceAnimator
- (bool)gestureRecognizer:(id)arg1 shouldReceiveTouch:(id)arg2 {
    return 0;
}
%end

%hook SBLockScreenHintManager
- (bool)_isBounceEnabledForController:(id)arg1 locationInWindow:(CGPoint)arg2 {
    return 0;
}
%end

