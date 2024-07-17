#import <UIKit/UIKit.h>

#include <substrate.h>

static id _patched_ftt_meth_$SBDockView$_newBackgroundImage(id self, SEL _cmd) {
    return NULL;
}

static void (*_orig_ftt_meth_$SBDockView$setBackgroundAlpha$)(id, SEL, float);
static void _patched_ftt_meth_$SBDockView$setBackgroundAlpha$(id self, SEL _cmd, float arg1) {
    arg1 = 0;
    _orig_ftt_meth_$SBDockView$setBackgroundAlpha$(self, _cmd, arg1);
}

static id _patched_ftt_meth_$SBHighlightView$initWithFrame$highlightAlpha$highlightHeight$(id self, SEL _cmd, CGRect arg1, float arg2, float arg3) {
    return NULL;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBDockView = objc_getClass("SBDockView");
    MSHookMessageEx(_ftt_class_SBDockView, @selector(_newBackgroundImage), (IMP)_patched_ftt_meth_$SBDockView$_newBackgroundImage, NULL);
    MSHookMessageEx(_ftt_class_SBDockView, @selector(setBackgroundAlpha:), (IMP)_patched_ftt_meth_$SBDockView$setBackgroundAlpha$, (IMP *)_orig_ftt_meth_$SBDockView$setBackgroundAlpha$);
    Class _ftt_class_SBHighlightView = objc_getClass("SBHighlightView");
    MSHookMessageEx(_ftt_class_SBHighlightView, @selector(initWithFrame:highlightAlpha:highlightHeight:), (IMP)_patched_ftt_meth_$SBHighlightView$initWithFrame$highlightAlpha$highlightHeight$, NULL);
}
