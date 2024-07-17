#import <UIKit/UIKit.h>

%hook SBLockScreenViewController
- (bool)isBounceEnabledForPresentingController:(id)arg1 locationInWindow:(CGPoint)arg2 {
    // •
    return 0;
}
%end

%hook SBLockScreenBounceAnimator
- (bool)gestureRecognizerShouldBegin:(id)arg1 {
    // •
    return 0;
}
%end

