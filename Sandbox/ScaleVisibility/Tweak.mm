#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$MKMapView$_setScaleVisible$animated$)(id, SEL, bool, bool);
static void _patched_ftt_meth_$MKMapView$_setScaleVisible$animated$(id self, SEL _cmd, bool arg1, bool arg2) {
    // (Argument #1):  Static Visibility  (Argument #2):  Animated
    arg2 = 1;
    _orig_ftt_meth_$MKMapView$_setScaleVisible$animated$(self, _cmd, arg1, arg2);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_MKMapView = objc_getClass("MKMapView");
    MSHookMessageEx(_ftt_class_MKMapView, @selector(_setScaleVisible:animated:), (IMP)_patched_ftt_meth_$MKMapView$_setScaleVisible$animated$, (IMP *)_orig_ftt_meth_$MKMapView$_setScaleVisible$animated$);
}
