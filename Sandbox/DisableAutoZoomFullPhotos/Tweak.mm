#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$PUOneUpSettings$setMaximumInitialZoomToFillScaleForCompactSizeClass$)(id, SEL, double);
static void _patched_ftt_meth_$PUOneUpSettings$setMaximumInitialZoomToFillScaleForCompactSizeClass$(id self, SEL _cmd, double arg1) {
    arg1 = 0;
    _orig_ftt_meth_$PUOneUpSettings$setMaximumInitialZoomToFillScaleForCompactSizeClass$(self, _cmd, arg1);
}

static double _patched_ftt_meth_$PUOneUpSettings$maximumInitialZoomToFillScaleForCompactSizeClass(id self, SEL _cmd) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_PUOneUpSettings = objc_getClass("PUOneUpSettings");
    MSHookMessageEx(_ftt_class_PUOneUpSettings, @selector(setMaximumInitialZoomToFillScaleForCompactSizeClass:), (IMP)_patched_ftt_meth_$PUOneUpSettings$setMaximumInitialZoomToFillScaleForCompactSizeClass$, (IMP *)_orig_ftt_meth_$PUOneUpSettings$setMaximumInitialZoomToFillScaleForCompactSizeClass$);
    MSHookMessageEx(_ftt_class_PUOneUpSettings, @selector(maximumInitialZoomToFillScaleForCompactSizeClass), (IMP)_patched_ftt_meth_$PUOneUpSettings$maximumInitialZoomToFillScaleForCompactSizeClass, NULL);
}
