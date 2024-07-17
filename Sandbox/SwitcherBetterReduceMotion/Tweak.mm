#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$SBReduceMotionDeckSwitcherViewController$_shouldShowIconAndTitleInItemContainers(id self, SEL _cmd) {
    return 1;
}

static id _patched_ftt_meth_$SBReduceMotionDeckSwitcherViewController$_iconTitleContainerForDisplayItem$(id self, SEL _cmd, id arg1) {
    return NULL;
}

static bool _patched_ftt_meth_$SBReduceMotionDeckSwitcherViewController$_shouldUseDepth(id self, SEL _cmd) {
    return 1;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBReduceMotionDeckSwitcherViewController = objc_getClass("SBReduceMotionDeckSwitcherViewController");
    MSHookMessageEx(_ftt_class_SBReduceMotionDeckSwitcherViewController, @selector(_shouldShowIconAndTitleInItemContainers), (IMP)_patched_ftt_meth_$SBReduceMotionDeckSwitcherViewController$_shouldShowIconAndTitleInItemContainers, NULL);
    MSHookMessageEx(_ftt_class_SBReduceMotionDeckSwitcherViewController, @selector(_iconTitleContainerForDisplayItem:), (IMP)_patched_ftt_meth_$SBReduceMotionDeckSwitcherViewController$_iconTitleContainerForDisplayItem$, NULL);
    MSHookMessageEx(_ftt_class_SBReduceMotionDeckSwitcherViewController, @selector(_shouldUseDepth), (IMP)_patched_ftt_meth_$SBReduceMotionDeckSwitcherViewController$_shouldUseDepth, NULL);
}
