#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$IMFMFSession$disableLocationSharing(id self, SEL _cmd) {
    return 1;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_IMFMFSession = objc_getClass("IMFMFSession");
    MSHookMessageEx(_ftt_class_IMFMFSession, @selector(disableLocationSharing), (IMP)_patched_ftt_meth_$IMFMFSession$disableLocationSharing, NULL);
}
