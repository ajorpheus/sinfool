#import <UIKit/UIKit.h>

%hook WKContentView
- (bool)_zoomToRect:(CGRect)arg1 withOrigin:(CGPoint)arg2 fitEntireRect:(bool)arg3 minimumScale:(double)arg4 maximumScale:(double)arg5 minimumScrollDistance:(double)arg6 {
    return 0;
}
%end

