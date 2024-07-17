#import <UIKit/UIKit.h>

%hook UIStatusBar
- (id)foregroundColor {
    // Status Bar - Foreground Color
    return [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:255/255.0];
}
%end

%hook PHHandsetDialerLCDView
- (void)setBackgroundColor:(id)arg1 {
    // Dialer - Background Color #1
    arg1 = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook PHHandsetDialerView
- (id)dialerColor {
    // Dialer - Background Color #2
    return [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:255/255.0];
}
%end

%hook TPRevealingRingView
- (void)setColorInsideRing:(id)arg1 {
    // Dialer - Button Color
    arg1 = [UIColor colorWithRed:229/255.0 green:229/255.0 blue:229/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook PhoneRootView
- (void)setBackgroundColor:(id)arg1 {
    // Dialer - Button Highlight Color
    arg1 = [UIColor colorWithRed:186/255.0 green:186/255.0 blue:186/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook TPRevealingRingView
- (void)setDefaultRingStrokeWidth:(double)arg1 {
    // Dialer - Button Ring Width
    arg1 = -0.5;
    %orig;
}
%end

%hook TPSuperBottomBarButton
- (void)setBackgroundColor:(id)arg1 {
    // Dialer - Call Button Color (iOS 9)
    arg1 = [UIColor colorWithRed:76/255.0 green:217/255.0 blue:100/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook PHBottomBarButton
- (void)setBackgroundColor:(id)arg1 {
    // Dialer - Call Button Color (iOS 10)
    arg1 = [UIColor colorWithRed:76/255.0 green:217/255.0 blue:100/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook UITabBarButton
- (void)_setContentTintColor:(id)arg1 forState:(unsigned long long)arg2 {
    // Tab Bar - Unselected Image Color
    arg1 = [UIColor colorWithRed:162/255.0 green:162/255.0 blue:162/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook UITabBarSwappableImageView
- (void)showAlternateImage:(bool)arg1 {
    // Tab Bar - Alternate Image
    arg1 = 1;
    %orig;
}
%end

