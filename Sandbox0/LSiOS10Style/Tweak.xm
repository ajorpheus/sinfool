#import <UIKit/UIKit.h>

%hook SBSlideUpAppGrabberView
- (bool)_shouldUseVibrancy {
    // If above set to "FALSE" then...  (CHANGE THIS UNIT TO "pass-through")
    return 0;
}
%end

%hook SBLockScreenScrollView
- (bool)gestureRecognizer:(id)arg1 shouldReceiveTouch:(id)arg2 {
    return 0;
}
%end

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

%hook SBLockScreenView
- (void)setTopGrabberHidden:(bool)arg1 forRequester:(id)arg2 {
    arg1 = 1;
    %orig;
}
%end

%hook SBLockScreenView
- (void)setBottomGrabberHidden:(bool)arg1 forRequester:(id)arg2 {
    arg1 = 1;
    %orig;
}
%end

%hook _UIGlintyStringView
- (id)chevron {
    return NULL;
}
%end

%hook SBLockScreenView
- (void)setCustomSlideToUnlockText:(id)arg1 {
    arg1 = @"Press home to unlock";
    %orig;
}
%end

%hook SBLockScreenViewController
- (bool)shouldShowSlideToUnlockTextImmediately {
    return 1;
}
%end

