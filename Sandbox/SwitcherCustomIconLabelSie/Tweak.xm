#import <UIKit/UIKit.h>

%hook SBDeckSwitcherItemContainer
- (void)setContentPageViewScale:(double)arg1 {
    // Set Size... (Tiny=1.5, Small=1, Stock=.75, Big=.5 Bigger=.4, Huge=.3)
    arg1 = 0.5;
    %orig;
}
%end

%hook SBDeckSwitcherIconImageContainerView
- (id)displayName {
    // Hides Labels: (Show=P)
    return @"";
}
%end

