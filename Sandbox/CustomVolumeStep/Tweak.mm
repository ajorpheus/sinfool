#import <UIKit/UIKit.h>

#include <substrate.h>

static float _patched_ftt_meth_$VolumeControl$volumeStepUp(id self, SEL _cmd) {
    // Step "Up" Increment %:  (Range: 0.0 - 1.0), i.e. 0=none, .25=4, .5=2, 1=1
    return 0.25;
}

static float _patched_ftt_meth_$VolumeControl$volumeStepDown(id self, SEL _cmd) {
    // Step "Down" Increment %:  (Range: 0.0 - 1.0), i.e. 0=none, .25=4, .5=2, 1=1
    return 0.5;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_VolumeControl = objc_getClass("VolumeControl");
    MSHookMessageEx(_ftt_class_VolumeControl, @selector(volumeStepUp), (IMP)_patched_ftt_meth_$VolumeControl$volumeStepUp, NULL);
    MSHookMessageEx(_ftt_class_VolumeControl, @selector(volumeStepDown), (IMP)_patched_ftt_meth_$VolumeControl$volumeStepDown, NULL);
}
