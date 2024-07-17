#import <UIKit/UIKit.h>

%hook SBLockScreenViewController
- (long long)statusBarStyle {
    // LS SB:  -1=none 1=springboard size
    return 1;
}
%end

%hook UIStatusBarForegroundStyleAttributes
- (id)initWithHeight:(double)arg1 legibilityStyle:(long long)arg2 tintColor:(id)arg3 hasBusyBackground:(bool)arg4 idiom:(long long)arg5 {
    // (Argument #1) HEIGHT:  4S=942, iP5=1120, iP6+=1452  (Argument #3) COLOR:  optional
    arg1 = 1120;
    return %orig;
}
%end

%hook UIView
- (bool)_canHandleStatusBarTouchAtLocation:(CGPoint)arg1 {
    // Disables Status Bar Touch
    return 0;
}
%end

