#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$SBCoverSheetTransitionSettings$setBlursPanel$)(id, SEL, bool);
static void _patched_ftt_meth_$SBCoverSheetTransitionSettings$setBlursPanel$(id self, SEL _cmd, bool arg1) {
    arg1 = 0;
    _orig_ftt_meth_$SBCoverSheetTransitionSettings$setBlursPanel$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$SBCoverSheetTransitionSettings$setFadePanelWallpaper$)(id, SEL, bool);
static void _patched_ftt_meth_$SBCoverSheetTransitionSettings$setFadePanelWallpaper$(id self, SEL _cmd, bool arg1) {
    arg1 = 0;
    _orig_ftt_meth_$SBCoverSheetTransitionSettings$setFadePanelWallpaper$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$SBCoverSheetTransitionSettings$setFadesContent$)(id, SEL, bool);
static void _patched_ftt_meth_$SBCoverSheetTransitionSettings$setFadesContent$(id self, SEL _cmd, bool arg1) {
    arg1 = 0;
    _orig_ftt_meth_$SBCoverSheetTransitionSettings$setFadesContent$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBCoverSheetTransitionSettings = objc_getClass("SBCoverSheetTransitionSettings");
    MSHookMessageEx(_ftt_class_SBCoverSheetTransitionSettings, @selector(setBlursPanel:), (IMP)_patched_ftt_meth_$SBCoverSheetTransitionSettings$setBlursPanel$, (IMP *)_orig_ftt_meth_$SBCoverSheetTransitionSettings$setBlursPanel$);
    MSHookMessageEx(_ftt_class_SBCoverSheetTransitionSettings, @selector(setFadePanelWallpaper:), (IMP)_patched_ftt_meth_$SBCoverSheetTransitionSettings$setFadePanelWallpaper$, (IMP *)_orig_ftt_meth_$SBCoverSheetTransitionSettings$setFadePanelWallpaper$);
    MSHookMessageEx(_ftt_class_SBCoverSheetTransitionSettings, @selector(setFadesContent:), (IMP)_patched_ftt_meth_$SBCoverSheetTransitionSettings$setFadesContent$, (IMP *)_orig_ftt_meth_$SBCoverSheetTransitionSettings$setFadesContent$);
}
