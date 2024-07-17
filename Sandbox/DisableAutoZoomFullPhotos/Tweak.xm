#import <UIKit/UIKit.h>

%hook PUOneUpSettings
- (void)setMaximumInitialZoomToFillScaleForCompactSizeClass:(double)arg1 {
    arg1 = 0;
    %orig;
}
%end

%hook PUOneUpSettings
- (double)maximumInitialZoomToFillScaleForCompactSizeClass {
    return 0;
}
%end

