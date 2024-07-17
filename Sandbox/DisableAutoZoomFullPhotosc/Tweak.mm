#import <UIKit/UIKit.h>

#include <substrate.h>

static double _patched_ftt_meth_$PUOneUpSettings$maximumInitialZoomToFillScaleForCompactSizeClass(id self, SEL _cmd) {
    return 0;
}

static void (*_orig_ftt_meth_$PUOneUpSettings$setMaximumInitialZoomToFillScaleForCompactSizeClass$)(id, SEL, double);
static void _patched_ftt_meth_$PUOneUpSettings$setMaximumInitialZoomToFillScaleForCompactSizeClass$(id self, SEL _cmd, double arg1) {
    arg1 = 0;
    _orig_ftt_meth_$PUOneUpSettings$setMaximumInitialZoomToFillScaleForCompactSizeClass$(self, _cmd, arg1);
}

static float _patched_ftt_meth_$PUOneUpTilingLayout$tileContentMaximumInitialZoomToFillScale(id self, SEL _cmd) {
    return 0;
}

static void (*_orig_ftt_meth_$PUOneUpTilingLayout$setTileContentMaximumInitialZoomToFillScale$)(id, SEL, float);
static void _patched_ftt_meth_$PUOneUpTilingLayout$setTileContentMaximumInitialZoomToFillScale$(id self, SEL _cmd, float arg1) {
    arg1 = 0;
    _orig_ftt_meth_$PUOneUpTilingLayout$setTileContentMaximumInitialZoomToFillScale$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_PUOneUpSettings = objc_getClass("PUOneUpSettings");
    MSHookMessageEx(_ftt_class_PUOneUpSettings, @selector(maximumInitialZoomToFillScaleForCompactSizeClass), (IMP)_patched_ftt_meth_$PUOneUpSettings$maximumInitialZoomToFillScaleForCompactSizeClass, NULL);
    MSHookMessageEx(_ftt_class_PUOneUpSettings, @selector(setMaximumInitialZoomToFillScaleForCompactSizeClass:), (IMP)_patched_ftt_meth_$PUOneUpSettings$setMaximumInitialZoomToFillScaleForCompactSizeClass$, (IMP *)_orig_ftt_meth_$PUOneUpSettings$setMaximumInitialZoomToFillScaleForCompactSizeClass$);
    Class _ftt_class_PUOneUpTilingLayout = objc_getClass("PUOneUpTilingLayout");
    MSHookMessageEx(_ftt_class_PUOneUpTilingLayout, @selector(tileContentMaximumInitialZoomToFillScale), (IMP)_patched_ftt_meth_$PUOneUpTilingLayout$tileContentMaximumInitialZoomToFillScale, NULL);
    MSHookMessageEx(_ftt_class_PUOneUpTilingLayout, @selector(setTileContentMaximumInitialZoomToFillScale:), (IMP)_patched_ftt_meth_$PUOneUpTilingLayout$setTileContentMaximumInitialZoomToFillScale$, (IMP *)_orig_ftt_meth_$PUOneUpTilingLayout$setTileContentMaximumInitialZoomToFillScale$);
}
