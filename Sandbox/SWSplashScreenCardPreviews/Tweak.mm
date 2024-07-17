#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$SBAppSwitcherSnapshotView$shouldTransitionToDefaultPng(id self, SEL _cmd) {
    // •
    return 1;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBAppSwitcherSnapshotView = objc_getClass("SBAppSwitcherSnapshotView");
    MSHookMessageEx(_ftt_class_SBAppSwitcherSnapshotView, @selector(shouldTransitionToDefaultPng), (IMP)_patched_ftt_meth_$SBAppSwitcherSnapshotView$shouldTransitionToDefaultPng, NULL);
}
