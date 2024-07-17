#import <UIKit/UIKit.h>

%hook TPPathView
- (void)setFillColor:(id)arg1 {
    // Set Color...
    arg1 = [UIColor colorWithRed:255/255.0 green:127/255.0 blue:0/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook TPRevealingRingView
- (void)setAlphaInsideRing:(double)arg1 {
    // Button Alpha/Visibility:	(0.0-1.0 Higher #=Darker) ie.  0=Hide/None, 0.05=Very Light, 0.25=Darker, 0.5=Half, 1=Full etc.
    arg1 = 1;
    %orig;
}
%end

