#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$SBReduceMotionDeckSwitcherViewController$_shouldUseDepth(id self, SEL _cmd) {
    return 1;
}

static bool _patched_ftt_meth_$SBReduceMotionDeckSwitcherViewController$_shouldShowIconAndTitleInItemContainers(id self, SEL _cmd) {
    return 1;
}

static double _patched_ftt_meth_$SBReduceMotionDeckSwitcherViewController$_opacityForIconTitleViewAtIndex$(id self, SEL _cmd, unsigned long long arg1) {
    return 0;
}

static void (*_orig_ftt_meth_$SBAppSwitcherScrollView$setPagingEnabled$)(id, SEL, bool);
static void _patched_ftt_meth_$SBAppSwitcherScrollView$setPagingEnabled$(id self, SEL _cmd, bool arg1) {
    arg1 = 0;
    _orig_ftt_meth_$SBAppSwitcherScrollView$setPagingEnabled$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBReduceMotionDeckSwitcherViewController = objc_getClass("SBReduceMotionDeckSwitcherViewController");
    MSHookMessageEx(_ftt_class_SBReduceMotionDeckSwitcherViewController, @selector(_shouldUseDepth), (IMP)_patched_ftt_meth_$SBReduceMotionDeckSwitcherViewController$_shouldUseDepth, NULL);
    MSHookMessageEx(_ftt_class_SBReduceMotionDeckSwitcherViewController, @selector(_shouldShowIconAndTitleInItemContainers), (IMP)_patched_ftt_meth_$SBReduceMotionDeckSwitcherViewController$_shouldShowIconAndTitleInItemContainers, NULL);
    MSHookMessageEx(_ftt_class_SBReduceMotionDeckSwitcherViewController, @selector(_opacityForIconTitleViewAtIndex:), (IMP)_patched_ftt_meth_$SBReduceMotionDeckSwitcherViewController$_opacityForIconTitleViewAtIndex$, NULL);
    Class _ftt_class_SBAppSwitcherScrollView = objc_getClass("SBAppSwitcherScrollView");
    MSHookMessageEx(_ftt_class_SBAppSwitcherScrollView, @selector(setPagingEnabled:), (IMP)_patched_ftt_meth_$SBAppSwitcherScrollView$setPagingEnabled$, (IMP *)_orig_ftt_meth_$SBAppSwitcherScrollView$setPagingEnabled$);
}
