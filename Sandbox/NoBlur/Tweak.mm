#import <UIKit/UIKit.h>

#include <substrate.h>

static id _patched_ftt_meth_$SBHighlightView$initWithFrame$highlightAlpha$highlightHeight$(id self, SEL _cmd, CGRect arg1, float arg2, float arg3) {
    return NULL;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBHighlightView = objc_getClass("SBHighlightView");
    MSHookMessageEx(_ftt_class_SBHighlightView, @selector(initWithFrame:highlightAlpha:highlightHeight:), (IMP)_patched_ftt_meth_$SBHighlightView$initWithFrame$highlightAlpha$highlightHeight$, NULL);
}
