#import <UIKit/UIKit.h>

%hook SBLockOverlayStyleProperties
- (float)tintAlpha {
    // Tint Alpha:  (0.0-1.0, pass-through=stock, 0=none/transparent)
    return 0;
}
%end

%hook TPRevealingRingView
- (void)setDefaultRingStrokeWidth:(float)arg1 {
    // Button Ring Width:	select any number... (0=none, OR delete this entry to restore stock rings)
    arg1 = 0;
    %orig;
}
%end

%hook TPPathView
- (void)setFillColor:(id)arg1 {
    // Button Color
    arg1 = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook SBUIPasscodeLockNumberPad
- (void)setShowsEmergencyCallButton:(BOOL)arg1 {
    // Show Emergency Call Button: (true=yes, false=no)
    arg1 = 1;
    %orig;
}
%end

