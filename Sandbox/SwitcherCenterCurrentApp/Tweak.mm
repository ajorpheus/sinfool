#import <UIKit/UIKit.h>

#include <substrate.h>

static unsigned long long _patched_ftt_meth_$SBDeckSwitcherViewController$_indexForPresentationOrDismissalIsPresenting$(id self, SEL _cmd, bool arg1) {
    return 1;
}

static unsigned long long _patched_ftt_meth_$SBReduceMotionDeckSwitcherViewController$_indexForPresentationOrDismissalIsPresenting$(id self, SEL _cmd, bool arg1) {
    return 1;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBDeckSwitcherViewController = objc_getClass("SBDeckSwitcherViewController");
    MSHookMessageEx(_ftt_class_SBDeckSwitcherViewController, @selector(_indexForPresentationOrDismissalIsPresenting:), (IMP)_patched_ftt_meth_$SBDeckSwitcherViewController$_indexForPresentationOrDismissalIsPresenting$, NULL);
    Class _ftt_class_SBReduceMotionDeckSwitcherViewController = objc_getClass("SBReduceMotionDeckSwitcherViewController");
    MSHookMessageEx(_ftt_class_SBReduceMotionDeckSwitcherViewController, @selector(_indexForPresentationOrDismissalIsPresenting:), (IMP)_patched_ftt_meth_$SBReduceMotionDeckSwitcherViewController$_indexForPresentationOrDismissalIsPresenting$, NULL);
}
