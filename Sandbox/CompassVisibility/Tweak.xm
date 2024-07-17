#import <UIKit/UIKit.h>

%hook MKMapView
- (void)_setCompassVisible:(bool)arg1 animated:(bool)arg2 {
    // (Argument #1):  Visibility
    arg1 = 0;
    %orig;
}
%end

