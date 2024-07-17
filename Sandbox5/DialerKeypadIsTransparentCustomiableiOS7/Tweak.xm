#import <UIKit/UIKit.h>

%hook UIStatusBarStyleAttributes
- (id)foregroundStyle {
    // Status Bar Foreground:	(NULL) = NO, pass-through = YES
    return NULL;
}
%end

%hook PHHandsetDialerLCDView
- (id)lcdColor {
    // LCD Display:	(NULL) = Transparent, pass-through = White
    return NULL;
}
%end

%hook PHHandsetDialerView
- (id)dialerColor {
    // •
    return NULL;
}
%end

%hook TPPathView
- (void)setFillColor:(id)arg1 {
    // Button Color:  (NOTE):	This changes the button color BUT it also adds solid colored buttons to the in call keypad.  If you're not changing the button color, I recommend DELETING this entry.
    arg1 = [UIColor colorWithRed:94/255.0 green:214/255.0 blue:214/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook TPRevealingRingView
- (float)alphaInsideRing {
    // Button View/Alpha:	(0.0-1.0 Higher #=Darker) ie. 0=None, 0.05=Light, 0.25=darker etc.
    return 0;
}
%end

%hook TPRevealingRingView
- (void)setDefaultRingStrokeWidth:(float)arg1 {
    // Button Size:	(Best Range 0-12, Higher # = Smaller Size Button) 2=Stock
    arg1 = 0;
    %orig;
}
%end

%hook TPRevealingRingView
- (int)animationStyle {
    // Button Animation:  -1=None, 0=After Pressed, 1=As Pressed
    return 0;
}
%end

%hook UITabBarButton
- (void)_setContentTintColor:(id)arg1 forState:(unsigned int)arg2 {
    // Tab Bar Image Color
    arg1 = [UIColor colorWithRed:136/255.0 green:136/255.0 blue:136/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook UITabBarSwappableImageView
- (void)showAlternateImage:(BOOL)arg1 {
    // Show Alternate Tab Bar Image:  (TRUE or FALSE)
    arg1 = 0;
    %orig;
}
%end

