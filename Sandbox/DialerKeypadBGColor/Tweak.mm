#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$TPRevealingRingView$setColorOutsideRing$)(id, SEL, id);
static void _patched_ftt_meth_$TPRevealingRingView$setColorOutsideRing$(id self, SEL _cmd, id arg1) {
    arg1 = [UIColor colorWithRed:57/255.0 green:109/255.0 blue:167/255.0 alpha:255/255.0];
    _orig_ftt_meth_$TPRevealingRingView$setColorOutsideRing$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_TPRevealingRingView = objc_getClass("TPRevealingRingView");
    MSHookMessageEx(_ftt_class_TPRevealingRingView, @selector(setColorOutsideRing:), (IMP)_patched_ftt_meth_$TPRevealingRingView$setColorOutsideRing$, (IMP *)_orig_ftt_meth_$TPRevealingRingView$setColorOutsideRing$);
}
