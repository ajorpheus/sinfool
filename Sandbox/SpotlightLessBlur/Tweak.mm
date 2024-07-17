#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$SBSearchBackdropView$setTransitionProgress$)(id, SEL, double);
static void _patched_ftt_meth_$SBSearchBackdropView$setTransitionProgress$(id self, SEL _cmd, double arg1) {
    // Experiment With Values To Change Blur...
    arg1 = 0.975;
    _orig_ftt_meth_$SBSearchBackdropView$setTransitionProgress$(self, _cmd, arg1);
}

static bool _patched_ftt_meth_$SBSearchBackdropView$useHighQualityGraphics(id self, SEL _cmd) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBSearchBackdropView = objc_getClass("SBSearchBackdropView");
    MSHookMessageEx(_ftt_class_SBSearchBackdropView, @selector(setTransitionProgress:), (IMP)_patched_ftt_meth_$SBSearchBackdropView$setTransitionProgress$, (IMP *)_orig_ftt_meth_$SBSearchBackdropView$setTransitionProgress$);
    MSHookMessageEx(_ftt_class_SBSearchBackdropView, @selector(useHighQualityGraphics), (IMP)_patched_ftt_meth_$SBSearchBackdropView$useHighQualityGraphics, NULL);
}
