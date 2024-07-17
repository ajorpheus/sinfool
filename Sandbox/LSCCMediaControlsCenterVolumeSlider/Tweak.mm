#import <UIKit/UIKit.h>

#include <substrate.h>

static float _patched_ftt_meth_$MPVolumeController$_volumeFromAVController(id self, SEL _cmd) {
    return 0.5;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_MPVolumeController = objc_getClass("MPVolumeController");
    MSHookMessageEx(_ftt_class_MPVolumeController, @selector(_volumeFromAVController), (IMP)_patched_ftt_meth_$MPVolumeController$_volumeFromAVController, NULL);
}
