#import <UIKit/UIKit.h>

#include <substrate.h>

static double _patched_ftt_meth_$SBAppSwitcherIconController$iconLabelWidth(id self, SEL _cmd) {
    // Icon Labels:  (pass-through=show, 0=no)
    return 0;
}

static void (*_orig_ftt_meth_$SBAppSwitcherPageViewController$setOffsetToIndex$animated$)(id, SEL, unsigned long long, bool);
static void _patched_ftt_meth_$SBAppSwitcherPageViewController$setOffsetToIndex$animated$(id self, SEL _cmd, unsigned long long arg1, bool arg2) {
    // Centered Card:  (0=HS, 1=current app, 2=last app, etc...)
    arg1 = 0;
    _orig_ftt_meth_$SBAppSwitcherPageViewController$setOffsetToIndex$animated$(self, _cmd, arg1, arg2);
}

static void (*_orig_ftt_meth_$SBAppSwitcherIconController$setOffsetToIndex$animated$)(id, SEL, unsigned long long, bool);
static void _patched_ftt_meth_$SBAppSwitcherIconController$setOffsetToIndex$animated$(id self, SEL _cmd, unsigned long long arg1, bool arg2) {
    // Centered Icon:  (0=HS/none, 1=current app, 2=last app, etc...)
    arg1 = 0;
    _orig_ftt_meth_$SBAppSwitcherIconController$setOffsetToIndex$animated$(self, _cmd, arg1, arg2);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBAppSwitcherIconController = objc_getClass("SBAppSwitcherIconController");
    MSHookMessageEx(_ftt_class_SBAppSwitcherIconController, @selector(iconLabelWidth), (IMP)_patched_ftt_meth_$SBAppSwitcherIconController$iconLabelWidth, NULL);
    Class _ftt_class_SBAppSwitcherPageViewController = objc_getClass("SBAppSwitcherPageViewController");
    MSHookMessageEx(_ftt_class_SBAppSwitcherPageViewController, @selector(setOffsetToIndex:animated:), (IMP)_patched_ftt_meth_$SBAppSwitcherPageViewController$setOffsetToIndex$animated$, (IMP *)_orig_ftt_meth_$SBAppSwitcherPageViewController$setOffsetToIndex$animated$);
    MSHookMessageEx(_ftt_class_SBAppSwitcherIconController, @selector(setOffsetToIndex:animated:), (IMP)_patched_ftt_meth_$SBAppSwitcherIconController$setOffsetToIndex$animated$, (IMP *)_orig_ftt_meth_$SBAppSwitcherIconController$setOffsetToIndex$animated$);
}
