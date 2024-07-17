#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$SBCoverSheetTransitionsSettings$setTension$)(id, SEL, double);
static void _patched_ftt_meth_$SBCoverSheetTransitionsSettings$setTension$(id self, SEL _cmd, double arg1) {
    arg1 = 0;
    _orig_ftt_meth_$SBCoverSheetTransitionsSettings$setTension$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$SBCoverSheetTransitionSettings$setIconsFlyIn$)(id, SEL, bool);
static void _patched_ftt_meth_$SBCoverSheetTransitionSettings$setIconsFlyIn$(id self, SEL _cmd, bool arg1) {
    arg1 = 0;
    _orig_ftt_meth_$SBCoverSheetTransitionSettings$setIconsFlyIn$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBCoverSheetTransitionsSettings = objc_getClass("SBCoverSheetTransitionsSettings");
    MSHookMessageEx(_ftt_class_SBCoverSheetTransitionsSettings, @selector(setTension:), (IMP)_patched_ftt_meth_$SBCoverSheetTransitionsSettings$setTension$, (IMP *)_orig_ftt_meth_$SBCoverSheetTransitionsSettings$setTension$);
    Class _ftt_class_SBCoverSheetTransitionSettings = objc_getClass("SBCoverSheetTransitionSettings");
    MSHookMessageEx(_ftt_class_SBCoverSheetTransitionSettings, @selector(setIconsFlyIn:), (IMP)_patched_ftt_meth_$SBCoverSheetTransitionSettings$setIconsFlyIn$, (IMP *)_orig_ftt_meth_$SBCoverSheetTransitionSettings$setIconsFlyIn$);
}
