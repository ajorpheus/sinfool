#import <UIKit/UIKit.h>

%hook PUOneUpSettings
- (double)maximumInitialZoomToFillScaleForCompactSizeClass {
    return 0;
}
%end

%hook PUOneUpSettings
- (void)setMaximumInitialZoomToFillScaleForCompactSizeClass:(double)arg1 {
    arg1 = 0;
    %orig;
}
%end

%hook PUOneUpTilingLayout
- (float)tileContentMaximumInitialZoomToFillScale {
    return 0;
}
%end

%hook PUOneUpTilingLayout
- (void)setTileContentMaximumInitialZoomToFillScale:(float)arg1 {
    arg1 = 0;
    %orig;
}
%end

