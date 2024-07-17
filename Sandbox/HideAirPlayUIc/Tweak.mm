#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$SBMediaController$routeOtherThanHandsetIsAvailable(id self, SEL _cmd) {
    // CC Visibility
    return 1;
}

static bool _patched_ftt_meth_$MPAVRoutingController$routeOtherThanHandsetAvailable(id self, SEL _cmd) {
    return 0;
}

static bool _patched_ftt_meth_$MPAVRoutingController$routeOtherThanHandsetAndSpeakerAvailable(id self, SEL _cmd) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBMediaController = objc_getClass("SBMediaController");
    MSHookMessageEx(_ftt_class_SBMediaController, @selector(routeOtherThanHandsetIsAvailable), (IMP)_patched_ftt_meth_$SBMediaController$routeOtherThanHandsetIsAvailable, NULL);
    Class _ftt_class_MPAVRoutingController = objc_getClass("MPAVRoutingController");
    MSHookMessageEx(_ftt_class_MPAVRoutingController, @selector(routeOtherThanHandsetAvailable), (IMP)_patched_ftt_meth_$MPAVRoutingController$routeOtherThanHandsetAvailable, NULL);
    MSHookMessageEx(_ftt_class_MPAVRoutingController, @selector(routeOtherThanHandsetAndSpeakerAvailable), (IMP)_patched_ftt_meth_$MPAVRoutingController$routeOtherThanHandsetAndSpeakerAvailable, NULL);
}
