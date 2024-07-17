#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$_UIAlertControllerView$setCancelActionIsDiscrete$)(id, SEL, bool);
static void _patched_ftt_meth_$_UIAlertControllerView$setCancelActionIsDiscrete$(id self, SEL _cmd, bool arg1) {
    // Merge Button:  Yes=FALSE, No=TRUE
    arg1 = 0;
    _orig_ftt_meth_$_UIAlertControllerView$setCancelActionIsDiscrete$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class__UIAlertControllerView = objc_getClass("_UIAlertControllerView");
    MSHookMessageEx(_ftt_class__UIAlertControllerView, @selector(setCancelActionIsDiscrete:), (IMP)_patched_ftt_meth_$_UIAlertControllerView$setCancelActionIsDiscrete$, (IMP *)_orig_ftt_meth_$_UIAlertControllerView$setCancelActionIsDiscrete$);
}
