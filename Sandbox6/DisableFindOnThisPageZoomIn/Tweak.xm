#import <UIKit/UIKit.h>

%hook WKWebView
- (bool)_zoomToRect:(FloatRect)arg1 withOrigin:(FloatPoint)arg2 fitEntireRect:(bool)arg3 minimumScale:(double)arg4 maximumScale:(double)arg5 minimumScrollDistance:(float)arg6 {
    // •
    return 0;
}
%end

%hook WKContentView
- (bool)_zoomToRect:(CGRect)arg1 withOrigin:(CGPoint)arg2 fitEntireRect:(bool)arg3 minimumScale:(double)arg4 maximumScale:(double)arg5 minimumScrollDistance:(double)arg6 {
    // •
    return 0;
}
%end

