#import <UIKit/UIKit.h>

%hook MKMapView
- (void)_setScaleVisible:(bool)arg1 animated:(bool)arg2 {
    // (Argument #1):  Static Visibility  (Argument #2):  Animated
    arg2 = 1;
    %orig;
}
%end

