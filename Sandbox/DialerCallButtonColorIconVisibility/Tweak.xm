#import <UIKit/UIKit.h>

%hook TPSuperBottomBarButton
- (void)setBackgroundColor:(id)arg1 {
    // Button Visibility/Color:	Show=Set Color, Hide=pass-through [iOS GREEN=4CD964]
    arg1 = [UIColor colorWithRed:255/255.0 green:127/255.0 blue:0/255.0 alpha:255/255.0];
    %orig;
}
%end

