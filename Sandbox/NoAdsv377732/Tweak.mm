#import <UIKit/UIKit.h>

#include <substrate.h>

static id _patched_ftt_meth_$GPMAdController$init(id self, SEL _cmd) {
    return NULL;
}

static bool _patched_ftt_meth_$Track$isAudioAd(id self, SEL _cmd) {
    return 0;
}

static double _patched_ftt_meth_$RadioConstraints$skipEnforcementPeriod(id self, SEL _cmd) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_GPMAdController = objc_getClass("GPMAdController");
    MSHookMessageEx(_ftt_class_GPMAdController, @selector(init), (IMP)_patched_ftt_meth_$GPMAdController$init, NULL);
    Class _ftt_class_Track = objc_getClass("Track");
    MSHookMessageEx(_ftt_class_Track, @selector(isAudioAd), (IMP)_patched_ftt_meth_$Track$isAudioAd, NULL);
    Class _ftt_class_RadioConstraints = objc_getClass("RadioConstraints");
    MSHookMessageEx(_ftt_class_RadioConstraints, @selector(skipEnforcementPeriod), (IMP)_patched_ftt_meth_$RadioConstraints$skipEnforcementPeriod, NULL);
}
