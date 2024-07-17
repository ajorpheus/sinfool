#import <UIKit/UIKit.h>

#include <substrate.h>

static BOOL _patched_ftt_meth_$SBDeckSwitcherViewController$shouldShowIconAndLabelOfContainer$(id self, SEL _cmd, id arg1) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBDeckSwitcherViewController = objc_getClass("SBDeckSwitcherViewController");
    MSHookMessageEx(_ftt_class_SBDeckSwitcherViewController, @selector(shouldShowIconAndLabelOfContainer:), (IMP)_patched_ftt_meth_$SBDeckSwitcherViewController$shouldShowIconAndLabelOfContainer$, NULL);
}
