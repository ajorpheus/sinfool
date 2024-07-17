#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$SBUICallToActionLabel$setText$forLanguage$animated$)(id, SEL, id, id, bool);
static void _patched_ftt_meth_$SBUICallToActionLabel$setText$forLanguage$animated$(id self, SEL _cmd, id arg1, id arg2, bool arg3) {
    // (Arg#1): Set Custom Text...
    arg1 = @"Flex 3";
    _orig_ftt_meth_$SBUICallToActionLabel$setText$forLanguage$animated$(self, _cmd, arg1, arg2, arg3);
}

static void (*_orig_ftt_meth_$SBUICallToActionLabel$fadeInImmediately$completion$)(id, SEL, bool, id);
static void _patched_ftt_meth_$SBUICallToActionLabel$fadeInImmediately$completion$(id self, SEL _cmd, bool arg1, id arg2) {
    // Shows Text Immediately
    arg1 = 1;
    _orig_ftt_meth_$SBUICallToActionLabel$fadeInImmediately$completion$(self, _cmd, arg1, arg2);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBUICallToActionLabel = objc_getClass("SBUICallToActionLabel");
    MSHookMessageEx(_ftt_class_SBUICallToActionLabel, @selector(setText:forLanguage:animated:), (IMP)_patched_ftt_meth_$SBUICallToActionLabel$setText$forLanguage$animated$, (IMP *)_orig_ftt_meth_$SBUICallToActionLabel$setText$forLanguage$animated$);
    MSHookMessageEx(_ftt_class_SBUICallToActionLabel, @selector(fadeInImmediately:completion:), (IMP)_patched_ftt_meth_$SBUICallToActionLabel$fadeInImmediately$completion$, (IMP *)_orig_ftt_meth_$SBUICallToActionLabel$fadeInImmediately$completion$);
}
