#import <UIKit/UIKit.h>

#include <substrate.h>

static float (*_orig_ftt_meth_$MPVolumeController$setVolumeValue$)(id, SEL, float);
static float _patched_ftt_meth_$MPVolumeController$setVolumeValue$(id self, SEL _cmd, float arg1) {
    // Set Volume...  (Arg#1) Range: 0.0 - 1.0  (.5=50%, 1.0=100% etc)
    arg1 = 0.5;
    return _orig_ftt_meth_$MPVolumeController$setVolumeValue$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_MPVolumeController = objc_getClass("MPVolumeController");
    MSHookMessageEx(_ftt_class_MPVolumeController, @selector(setVolumeValue:), (IMP)_patched_ftt_meth_$MPVolumeController$setVolumeValue$, (IMP *)_orig_ftt_meth_$MPVolumeController$setVolumeValue$);
}
