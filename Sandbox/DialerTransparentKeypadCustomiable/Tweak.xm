#import <UIKit/UIKit.h>

%hook PHHandsetDialerView
- (void)setBackgroundColor:(id)arg1 {
    // Dialer - BG Color: Set Color or Transparent=P
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0/255.0];
    %orig;
}
%end

%hook TPRevealingRingView
- (void)setColorInsideRing:(id)arg1 {
    // Dialer - Button Color: Set Color
    arg1 = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:128/255.0];
    %orig;
}
%end

%hook TPRevealingRingView
- (void)setCornerRadius:(double)arg1 {
    // Dialer - Button Corner Radius: (Range: 0.0-26, Square=0, Circle=26)
    arg1 = 26;
    %orig;
}
%end

%hook TPRevealingRingView
- (void)setAnimationStyle:(int)arg1 {
    // Dialer - Button Highlight Animation: After Pressed=0, White As Pressed=1, None=2
    arg1 = 2;
    %orig;
}
%end

%hook TPSuperBottomBarButton
- (void)setBackgroundColor:(id)arg1 {
    // Call Button - BG Color: Set Color or Hide=P [Stock=4CD964]
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0/255.0];
    %orig;
}
%end

%hook PHBottomBarButton
- (void)setBackgroundColor:(id)arg1 {
    // Call Button (iOS 10) - BG Color: Set Color or Hide=P [Stock=4CD964]
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0/255.0];
    %orig;
}
%end

%hook UITabBarButton
- (void)_setContentTintColor:(id)arg1 forState:(unsigned long long)arg2 {
    // Tab Bar - Unselected Image Color: (Arg#1) Set Color [Stock=929292]
    arg1 = [UIColor colorWithRed:146/255.0 green:146/255.0 blue:146/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook PHHandsetDialerLCDView
- (void)setBackgroundColor:(id)arg1 {
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0/255.0];
    %orig;
}
%end

%hook TPRevealingRingView
- (void)setColorOutsideRing:(id)arg1 {
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0/255.0];
    %orig;
}
%end

%hook PHHandsetDialerView
- (id)dialerColor {
    return [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0/255.0];
}
%end

