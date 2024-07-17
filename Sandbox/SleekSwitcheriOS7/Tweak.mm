#import <UIKit/UIKit.h>

#include <substrate.h>

static float _patched_ftt_meth_$SBAppSliderIconController$iconLabelWidth(id self, SEL _cmd) {
    // Icon Labels:  (pass-through=show, 0=no)
    return 0;
}

static void (*_orig_ftt_meth_$SBAppSliderScrollingViewController$setOffsetToIndex$animated$)(id, SEL, unsigned int, BOOL);
static void _patched_ftt_meth_$SBAppSliderScrollingViewController$setOffsetToIndex$animated$(id self, SEL _cmd, unsigned int arg1, BOOL arg2) {
    // Centered Card:  (0=HS, 1=current app, 2=last app, etc...)
    arg1 = 0;
    _orig_ftt_meth_$SBAppSliderScrollingViewController$setOffsetToIndex$animated$(self, _cmd, arg1, arg2);
}

static void (*_orig_ftt_meth_$SBAppSliderIconController$setOffsetToIndex$animated$)(id, SEL, unsigned int, BOOL);
static void _patched_ftt_meth_$SBAppSliderIconController$setOffsetToIndex$animated$(id self, SEL _cmd, unsigned int arg1, BOOL arg2) {
    // Centered Icon:  (0=HS/none, 1=current app, 2=last app, etc...)
    arg1 = 0;
    _orig_ftt_meth_$SBAppSliderIconController$setOffsetToIndex$animated$(self, _cmd, arg1, arg2);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBAppSliderIconController = objc_getClass("SBAppSliderIconController");
    MSHookMessageEx(_ftt_class_SBAppSliderIconController, @selector(iconLabelWidth), (IMP)_patched_ftt_meth_$SBAppSliderIconController$iconLabelWidth, NULL);
    Class _ftt_class_SBAppSliderScrollingViewController = objc_getClass("SBAppSliderScrollingViewController");
    MSHookMessageEx(_ftt_class_SBAppSliderScrollingViewController, @selector(setOffsetToIndex:animated:), (IMP)_patched_ftt_meth_$SBAppSliderScrollingViewController$setOffsetToIndex$animated$, (IMP *)_orig_ftt_meth_$SBAppSliderScrollingViewController$setOffsetToIndex$animated$);
    MSHookMessageEx(_ftt_class_SBAppSliderIconController, @selector(setOffsetToIndex:animated:), (IMP)_patched_ftt_meth_$SBAppSliderIconController$setOffsetToIndex$animated$, (IMP *)_orig_ftt_meth_$SBAppSliderIconController$setOffsetToIndex$animated$);
}
