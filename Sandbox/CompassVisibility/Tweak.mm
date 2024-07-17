#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$MKMapView$_setCompassVisible$animated$)(id, SEL, bool, bool);
static void _patched_ftt_meth_$MKMapView$_setCompassVisible$animated$(id self, SEL _cmd, bool arg1, bool arg2) {
    // (Argument #1):  Visibility
    arg1 = 0;
    _orig_ftt_meth_$MKMapView$_setCompassVisible$animated$(self, _cmd, arg1, arg2);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_MKMapView = objc_getClass("MKMapView");
    MSHookMessageEx(_ftt_class_MKMapView, @selector(_setCompassVisible:animated:), (IMP)_patched_ftt_meth_$MKMapView$_setCompassVisible$animated$, (IMP *)_orig_ftt_meth_$MKMapView$_setCompassVisible$animated$);
}
