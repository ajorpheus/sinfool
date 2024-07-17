#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$TPPathView$setFillColor$)(id, SEL, id);
static void _patched_ftt_meth_$TPPathView$setFillColor$(id self, SEL _cmd, id arg1) {
    // Set Color...
    arg1 = [UIColor colorWithRed:255/255.0 green:127/255.0 blue:0/255.0 alpha:255/255.0];
    _orig_ftt_meth_$TPPathView$setFillColor$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$TPRevealingRingView$setAlphaInsideRing$)(id, SEL, double);
static void _patched_ftt_meth_$TPRevealingRingView$setAlphaInsideRing$(id self, SEL _cmd, double arg1) {
    // Button Alpha/Visibility:	(0.0-1.0 Higher #=Darker) ie.  0=Hide/None, 0.05=Very Light, 0.25=Darker, 0.5=Half, 1=Full etc.
    arg1 = 1;
    _orig_ftt_meth_$TPRevealingRingView$setAlphaInsideRing$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_TPPathView = objc_getClass("TPPathView");
    MSHookMessageEx(_ftt_class_TPPathView, @selector(setFillColor:), (IMP)_patched_ftt_meth_$TPPathView$setFillColor$, (IMP *)_orig_ftt_meth_$TPPathView$setFillColor$);
    Class _ftt_class_TPRevealingRingView = objc_getClass("TPRevealingRingView");
    MSHookMessageEx(_ftt_class_TPRevealingRingView, @selector(setAlphaInsideRing:), (IMP)_patched_ftt_meth_$TPRevealingRingView$setAlphaInsideRing$, (IMP *)_orig_ftt_meth_$TPRevealingRingView$setAlphaInsideRing$);
}
