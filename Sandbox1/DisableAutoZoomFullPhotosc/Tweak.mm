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

@class PUOneUpTilingLayout; @class PUOneUpSettings; 
static double (*_logos_orig$_ungrouped$PUOneUpSettings$maximumInitialZoomToFillScaleForCompactSizeClass)(_LOGOS_SELF_TYPE_NORMAL PUOneUpSettings* _LOGOS_SELF_CONST, SEL); static double _logos_method$_ungrouped$PUOneUpSettings$maximumInitialZoomToFillScaleForCompactSizeClass(_LOGOS_SELF_TYPE_NORMAL PUOneUpSettings* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$PUOneUpSettings$setMaximumInitialZoomToFillScaleForCompactSizeClass$)(_LOGOS_SELF_TYPE_NORMAL PUOneUpSettings* _LOGOS_SELF_CONST, SEL, double); static void _logos_method$_ungrouped$PUOneUpSettings$setMaximumInitialZoomToFillScaleForCompactSizeClass$(_LOGOS_SELF_TYPE_NORMAL PUOneUpSettings* _LOGOS_SELF_CONST, SEL, double); static float (*_logos_orig$_ungrouped$PUOneUpTilingLayout$tileContentMaximumInitialZoomToFillScale)(_LOGOS_SELF_TYPE_NORMAL PUOneUpTilingLayout* _LOGOS_SELF_CONST, SEL); static float _logos_method$_ungrouped$PUOneUpTilingLayout$tileContentMaximumInitialZoomToFillScale(_LOGOS_SELF_TYPE_NORMAL PUOneUpTilingLayout* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$PUOneUpTilingLayout$setTileContentMaximumInitialZoomToFillScale$)(_LOGOS_SELF_TYPE_NORMAL PUOneUpTilingLayout* _LOGOS_SELF_CONST, SEL, float); static void _logos_method$_ungrouped$PUOneUpTilingLayout$setTileContentMaximumInitialZoomToFillScale$(_LOGOS_SELF_TYPE_NORMAL PUOneUpTilingLayout* _LOGOS_SELF_CONST, SEL, float); 

#line 3 "Tweak.xm"

static double _logos_method$_ungrouped$PUOneUpSettings$maximumInitialZoomToFillScaleForCompactSizeClass(_LOGOS_SELF_TYPE_NORMAL PUOneUpSettings* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 0;
}



static void _logos_method$_ungrouped$PUOneUpSettings$setMaximumInitialZoomToFillScaleForCompactSizeClass$(_LOGOS_SELF_TYPE_NORMAL PUOneUpSettings* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, double arg1) {
    arg1 = 0;
    _logos_orig$_ungrouped$PUOneUpSettings$setMaximumInitialZoomToFillScaleForCompactSizeClass$(self, _cmd, arg1);
}



static float _logos_method$_ungrouped$PUOneUpTilingLayout$tileContentMaximumInitialZoomToFillScale(_LOGOS_SELF_TYPE_NORMAL PUOneUpTilingLayout* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 0;
}



static void _logos_method$_ungrouped$PUOneUpTilingLayout$setTileContentMaximumInitialZoomToFillScale$(_LOGOS_SELF_TYPE_NORMAL PUOneUpTilingLayout* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, float arg1) {
    arg1 = 0;
    _logos_orig$_ungrouped$PUOneUpTilingLayout$setTileContentMaximumInitialZoomToFillScale$(self, _cmd, arg1);
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$PUOneUpSettings = objc_getClass("PUOneUpSettings"); { MSHookMessageEx(_logos_class$_ungrouped$PUOneUpSettings, @selector(maximumInitialZoomToFillScaleForCompactSizeClass), (IMP)&_logos_method$_ungrouped$PUOneUpSettings$maximumInitialZoomToFillScaleForCompactSizeClass, (IMP*)&_logos_orig$_ungrouped$PUOneUpSettings$maximumInitialZoomToFillScaleForCompactSizeClass);}{ MSHookMessageEx(_logos_class$_ungrouped$PUOneUpSettings, @selector(setMaximumInitialZoomToFillScaleForCompactSizeClass:), (IMP)&_logos_method$_ungrouped$PUOneUpSettings$setMaximumInitialZoomToFillScaleForCompactSizeClass$, (IMP*)&_logos_orig$_ungrouped$PUOneUpSettings$setMaximumInitialZoomToFillScaleForCompactSizeClass$);}Class _logos_class$_ungrouped$PUOneUpTilingLayout = objc_getClass("PUOneUpTilingLayout"); { MSHookMessageEx(_logos_class$_ungrouped$PUOneUpTilingLayout, @selector(tileContentMaximumInitialZoomToFillScale), (IMP)&_logos_method$_ungrouped$PUOneUpTilingLayout$tileContentMaximumInitialZoomToFillScale, (IMP*)&_logos_orig$_ungrouped$PUOneUpTilingLayout$tileContentMaximumInitialZoomToFillScale);}{ MSHookMessageEx(_logos_class$_ungrouped$PUOneUpTilingLayout, @selector(setTileContentMaximumInitialZoomToFillScale:), (IMP)&_logos_method$_ungrouped$PUOneUpTilingLayout$setTileContentMaximumInitialZoomToFillScale$, (IMP*)&_logos_orig$_ungrouped$PUOneUpTilingLayout$setTileContentMaximumInitialZoomToFillScale$);}} }
#line 29 "Tweak.xm"
