#import <UIKit/UIKit.h>

#include <substrate.h>

static long long _patched_ftt_meth_$UIAlertController$preferredStyle(id self, SEL _cmd) {
    // •
    return 1;
}

static id (*_orig_ftt_meth_$UIAlertController$visualStyleForAlertControllerStyle$traitCollection$descriptor$)(id, SEL, long long, id, id);
static id _patched_ftt_meth_$UIAlertController$visualStyleForAlertControllerStyle$traitCollection$descriptor$(id self, SEL _cmd, long long arg1, id arg2, id arg3) {
    // (Arg#1): Larger=0
    arg1 = 1;
    return _orig_ftt_meth_$UIAlertController$visualStyleForAlertControllerStyle$traitCollection$descriptor$(self, _cmd, arg1, arg2, arg3);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_UIAlertController = objc_getClass("UIAlertController");
    MSHookMessageEx(_ftt_class_UIAlertController, @selector(preferredStyle), (IMP)_patched_ftt_meth_$UIAlertController$preferredStyle, NULL);
    MSHookMessageEx(_ftt_class_UIAlertController, @selector(visualStyleForAlertControllerStyle:traitCollection:descriptor:), (IMP)_patched_ftt_meth_$UIAlertController$visualStyleForAlertControllerStyle$traitCollection$descriptor$, (IMP *)_orig_ftt_meth_$UIAlertController$visualStyleForAlertControllerStyle$traitCollection$descriptor$);
}
