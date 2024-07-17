#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$SBApplication$isMedusaCapable(id self, SEL _cmd) {
    return 1;
}

static long long _patched_ftt_meth_$SBPlatformController$medusaCapabilities(id self, SEL _cmd) {
    return 2;
}

static bool _patched_ftt_meth_$SBApplication$_supportsApplicationType$(id self, SEL _cmd, int arg1) {
    return 1;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBApplication = objc_getClass("SBApplication");
    MSHookMessageEx(_ftt_class_SBApplication, @selector(isMedusaCapable), (IMP)_patched_ftt_meth_$SBApplication$isMedusaCapable, NULL);
    Class _ftt_class_SBPlatformController = objc_getClass("SBPlatformController");
    MSHookMessageEx(_ftt_class_SBPlatformController, @selector(medusaCapabilities), (IMP)_patched_ftt_meth_$SBPlatformController$medusaCapabilities, NULL);
    MSHookMessageEx(_ftt_class_SBApplication, @selector(_supportsApplicationType:), (IMP)_patched_ftt_meth_$SBApplication$_supportsApplicationType$, NULL);
}
