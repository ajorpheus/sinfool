#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$UIKeyboardPredictionView$enabled(id self, SEL _cmd) {
    return 1;
}

static bool _patched_ftt_meth_$UIKeyboardImpl$showsCandidateBar(id self, SEL _cmd) {
    return 1;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_UIKeyboardPredictionView = objc_getClass("UIKeyboardPredictionView");
    MSHookMessageEx(_ftt_class_UIKeyboardPredictionView, @selector(enabled), (IMP)_patched_ftt_meth_$UIKeyboardPredictionView$enabled, NULL);
    Class _ftt_class_UIKeyboardImpl = objc_getClass("UIKeyboardImpl");
    MSHookMessageEx(_ftt_class_UIKeyboardImpl, @selector(showsCandidateBar), (IMP)_patched_ftt_meth_$UIKeyboardImpl$showsCandidateBar, NULL);
}
