#import <UIKit/UIKit.h>

#include <substrate.h>

static id _patched_ftt_meth_$SBHighlightView$initWithFrame$highlightAlpha$highlightHeight$(id self, SEL _cmd, CGRect arg1, double arg2, double arg3) {
    // •
    return NULL;
}

static id _patched_ftt_meth_$SBChevronView$initWithFrame$(id self, SEL _cmd, CGRect arg1) {
    // Grabbers:  Hide=NULL, Show=pass-through
    return NULL;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBHighlightView = objc_getClass("SBHighlightView");
    MSHookMessageEx(_ftt_class_SBHighlightView, @selector(initWithFrame:highlightAlpha:highlightHeight:), (IMP)_patched_ftt_meth_$SBHighlightView$initWithFrame$highlightAlpha$highlightHeight$, NULL);
    Class _ftt_class_SBChevronView = objc_getClass("SBChevronView");
    MSHookMessageEx(_ftt_class_SBChevronView, @selector(initWithFrame:), (IMP)_patched_ftt_meth_$SBChevronView$initWithFrame$, NULL);
}
