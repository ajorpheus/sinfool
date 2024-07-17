#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$WKWebView$_zoomToRect$withOrigin$fitEntireRect$minimumScale$maximumScale$minimumScrollDistance$(id self, SEL _cmd, FloatRect arg1, FloatPoint arg2, bool arg3, double arg4, double arg5, float arg6) {
    // •
    return 0;
}

static bool _patched_ftt_meth_$WKContentView$_zoomToRect$withOrigin$fitEntireRect$minimumScale$maximumScale$minimumScrollDistance$(id self, SEL _cmd, CGRect arg1, CGPoint arg2, bool arg3, double arg4, double arg5, double arg6) {
    // •
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_WKWebView = objc_getClass("WKWebView");
    MSHookMessageEx(_ftt_class_WKWebView, @selector(_zoomToRect:withOrigin:fitEntireRect:minimumScale:maximumScale:minimumScrollDistance:), (IMP)_patched_ftt_meth_$WKWebView$_zoomToRect$withOrigin$fitEntireRect$minimumScale$maximumScale$minimumScrollDistance$, NULL);
    Class _ftt_class_WKContentView = objc_getClass("WKContentView");
    MSHookMessageEx(_ftt_class_WKContentView, @selector(_zoomToRect:withOrigin:fitEntireRect:minimumScale:maximumScale:minimumScrollDistance:), (IMP)_patched_ftt_meth_$WKContentView$_zoomToRect$withOrigin$fitEntireRect$minimumScale$maximumScale$minimumScrollDistance$, NULL);
}
