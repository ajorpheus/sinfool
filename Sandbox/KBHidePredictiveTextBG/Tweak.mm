#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$UIKeyboardPredictionCell$updateBackgroundWithRenderConfig$)(id, SEL, id);
static void _patched_ftt_meth_$UIKeyboardPredictionCell$updateBackgroundWithRenderConfig$(id self, SEL _cmd, id arg1) {
    // •
    arg1 = NULL;
    _orig_ftt_meth_$UIKeyboardPredictionCell$updateBackgroundWithRenderConfig$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_UIKeyboardPredictionCell = objc_getClass("UIKeyboardPredictionCell");
    MSHookMessageEx(_ftt_class_UIKeyboardPredictionCell, @selector(updateBackgroundWithRenderConfig:), (IMP)_patched_ftt_meth_$UIKeyboardPredictionCell$updateBackgroundWithRenderConfig$, (IMP *)_orig_ftt_meth_$UIKeyboardPredictionCell$updateBackgroundWithRenderConfig$);
}
