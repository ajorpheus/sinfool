#line 1 "Tweak.xm"
#import <UIKit/UIKit.h>


#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

asm(".linker_option \"-framework\", \"CydiaSubstrate\"");

@class WKContentView; 
static bool (*_logos_orig$_ungrouped$WKContentView$_zoomToRect$withOrigin$fitEntireRect$minimumScale$maximumScale$minimumScrollDistance$)(_LOGOS_SELF_TYPE_NORMAL WKContentView* _LOGOS_SELF_CONST, SEL, CGRect, CGPoint, bool, double, double, double); static bool _logos_method$_ungrouped$WKContentView$_zoomToRect$withOrigin$fitEntireRect$minimumScale$maximumScale$minimumScrollDistance$(_LOGOS_SELF_TYPE_NORMAL WKContentView* _LOGOS_SELF_CONST, SEL, CGRect, CGPoint, bool, double, double, double); 

#line 3 "Tweak.xm"

static bool _logos_method$_ungrouped$WKContentView$_zoomToRect$withOrigin$fitEntireRect$minimumScale$maximumScale$minimumScrollDistance$(_LOGOS_SELF_TYPE_NORMAL WKContentView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, CGRect arg1, CGPoint arg2, bool arg3, double arg4, double arg5, double arg6) {
    return 0;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$WKContentView = objc_getClass("WKContentView"); { MSHookMessageEx(_logos_class$_ungrouped$WKContentView, @selector(_zoomToRect:withOrigin:fitEntireRect:minimumScale:maximumScale:minimumScrollDistance:), (IMP)&_logos_method$_ungrouped$WKContentView$_zoomToRect$withOrigin$fitEntireRect$minimumScale$maximumScale$minimumScrollDistance$, (IMP*)&_logos_orig$_ungrouped$WKContentView$_zoomToRect$withOrigin$fitEntireRect$minimumScale$maximumScale$minimumScrollDistance$);}} }
#line 9 "Tweak.xm"
