#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$SBSceneLayoutWindow$setBackgroundColor$)(id, SEL, id);
static void _patched_ftt_meth_$SBSceneLayoutWindow$setBackgroundColor$(id self, SEL _cmd, id arg1) {
    // ...Set Color
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:255/255.0];
    _orig_ftt_meth_$SBSceneLayoutWindow$setBackgroundColor$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$SBAnimationFactorySettings$setSlowDownFactor$)(id, SEL, double);
static void _patched_ftt_meth_$SBAnimationFactorySettings$setSlowDownFactor$(id self, SEL _cmd, double arg1) {
    // Animations Speed: (Range: 0.0-1.0) Lower # = Faster
    arg1 = 0;
    _orig_ftt_meth_$SBAnimationFactorySettings$setSlowDownFactor$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$SBAnimationFactorySettings$setSlowAnimations$)(id, SEL, bool);
static void _patched_ftt_meth_$SBAnimationFactorySettings$setSlowAnimations$(id self, SEL _cmd, bool arg1) {
    // No Slow Animations
    arg1 = 0;
    _orig_ftt_meth_$SBAnimationFactorySettings$setSlowAnimations$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBSceneLayoutWindow = objc_getClass("SBSceneLayoutWindow");
    MSHookMessageEx(_ftt_class_SBSceneLayoutWindow, @selector(setBackgroundColor:), (IMP)_patched_ftt_meth_$SBSceneLayoutWindow$setBackgroundColor$, (IMP *)_orig_ftt_meth_$SBSceneLayoutWindow$setBackgroundColor$);
    Class _ftt_class_SBAnimationFactorySettings = objc_getClass("SBAnimationFactorySettings");
    MSHookMessageEx(_ftt_class_SBAnimationFactorySettings, @selector(setSlowDownFactor:), (IMP)_patched_ftt_meth_$SBAnimationFactorySettings$setSlowDownFactor$, (IMP *)_orig_ftt_meth_$SBAnimationFactorySettings$setSlowDownFactor$);
    MSHookMessageEx(_ftt_class_SBAnimationFactorySettings, @selector(setSlowAnimations:), (IMP)_patched_ftt_meth_$SBAnimationFactorySettings$setSlowAnimations$, (IMP *)_orig_ftt_meth_$SBAnimationFactorySettings$setSlowAnimations$);
}
