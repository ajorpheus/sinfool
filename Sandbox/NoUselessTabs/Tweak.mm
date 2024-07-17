#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$MusicUserInterfaceStatusController$_isMusicSubscriptionServiceRestricted(id self, SEL _cmd) {
    // For You & New
    return 1;
}

static bool _patched_ftt_meth_$RadioAvailabilityController$isRadioAvailable(id self, SEL _cmd) {
    // Radio
    return 0;
}

static bool _patched_ftt_meth_$MusicStoreBag$supportsConnect(id self, SEL _cmd) {
    // Connect
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_MusicUserInterfaceStatusController = objc_getClass("MusicUserInterfaceStatusController");
    MSHookMessageEx(_ftt_class_MusicUserInterfaceStatusController, @selector(_isMusicSubscriptionServiceRestricted), (IMP)_patched_ftt_meth_$MusicUserInterfaceStatusController$_isMusicSubscriptionServiceRestricted, NULL);
    Class _ftt_class_RadioAvailabilityController = objc_getClass("RadioAvailabilityController");
    MSHookMessageEx(_ftt_class_RadioAvailabilityController, @selector(isRadioAvailable), (IMP)_patched_ftt_meth_$RadioAvailabilityController$isRadioAvailable, NULL);
    Class _ftt_class_MusicStoreBag = objc_getClass("MusicStoreBag");
    MSHookMessageEx(_ftt_class_MusicStoreBag, @selector(supportsConnect), (IMP)_patched_ftt_meth_$MusicStoreBag$supportsConnect, NULL);
}
