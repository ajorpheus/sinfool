#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$TPRevealingRingView$setCornerRadius$)(id, SEL, float);
static void _patched_ftt_meth_$TPRevealingRingView$setCornerRadius$(id self, SEL _cmd, float arg1) {
    // Adjusts Corner Radius
    arg1 = 23;
    _orig_ftt_meth_$TPRevealingRingView$setCornerRadius$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$TPRevealingRingView$setDefaultRingStrokeWidth$)(id, SEL, float);
static void _patched_ftt_meth_$TPRevealingRingView$setDefaultRingStrokeWidth$(id self, SEL _cmd, float arg1) {
    // Adjusts Ring Width
    arg1 = 3;
    _orig_ftt_meth_$TPRevealingRingView$setDefaultRingStrokeWidth$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_TPRevealingRingView = objc_getClass("TPRevealingRingView");
    MSHookMessageEx(_ftt_class_TPRevealingRingView, @selector(setCornerRadius:), (IMP)_patched_ftt_meth_$TPRevealingRingView$setCornerRadius$, (IMP *)_orig_ftt_meth_$TPRevealingRingView$setCornerRadius$);
    MSHookMessageEx(_ftt_class_TPRevealingRingView, @selector(setDefaultRingStrokeWidth:), (IMP)_patched_ftt_meth_$TPRevealingRingView$setDefaultRingStrokeWidth$, (IMP *)_orig_ftt_meth_$TPRevealingRingView$setDefaultRingStrokeWidth$);
}
