#import <UIKit/UIKit.h>

%hook UIStatusBarNewUIStyleAttributes
- (id)initWithRequest:(id)arg1 backgroundColor:(id)arg2 foregroundColor:(id)arg3 hasBusyBackground:(bool)arg4 {
    // Status Bar Visibility/Colors:  Hide=(Return Value):NULL, BG Color=(Arg#2), FG Color=(Arg#3)
    arg3 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:255/255.0];
    return %orig;
}
%end

%hook UIStatusBarNewUIStyleAttributes
- (bool)isTranslucent {
    // •
    return 1;
}
%end

%hook PHHandsetDialerView
- (id)dialerColor {
    // •
    return NULL;
}
%end

%hook TPNumberPadButton
- (void)setColor:(id)arg1 {
    // •
    arg1 = [UIColor colorWithRed:255/255.0 green:127/255.0 blue:0/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook TPNumberPadButton
- (double)alphaOutsideAndInsideRing {
    // •
    return 0;
}
%end

%hook TPRevealingRingView
- (void)setAlphaInsideRing:(double)arg1 {
    // Dialer Button Alpha/Visibility: (0.0-1.0 Higher #=Darker) ie.  0=Hide/None, 0.05=Very Light, 0.25=Darker, 0.5=Half, 1=Full etc.
    arg1 = 0.5;
    %orig;
}
%end

%hook TPPathView
- (void)setFillColor:(id)arg1 {
    // Dialer Button Color
    arg1 = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook UITabBarButton
- (void)_setContentTintColor:(id)arg1 forState:(unsigned long long)arg2 {
    // Unselected Tab Bar Image Color [iOS GRAY=929292]
    arg1 = [UIColor colorWithRed:146/255.0 green:146/255.0 blue:146/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook UITabBarSwappableImageView
- (id)initWithImage:(id)arg1 alternateImage:(id)arg2 {
    // Tab Bar Image:	Hide=NULL, Show=pass-through
    return NULL;
}
%end

%hook UITabBar
- (bool)_backgroundNeedsUpdate {
    // Tab Bar Background:  Hide=FALSE, Show=pass-through
    return 0;
}
%end

