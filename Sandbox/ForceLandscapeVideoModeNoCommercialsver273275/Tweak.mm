#import <UIKit/UIKit.h>

#include <substrate.h>

static int _patched_ftt_meth_$StartupViewController$forcedOrientation(id self, SEL _cmd) {
    return 3;
}

static int _patched_ftt_meth_$DSOrientationManager$currentForcedInterfaceOrientation(id self, SEL _cmd) {
    return 3;
}

static unsigned int _patched_ftt_meth_$FWAd$adId(id self, SEL _cmd) {
    return 0;
}

static unsigned int _patched_ftt_meth_$DSOrientationManager$currentForcedInterfaceOrientationMask(id self, SEL _cmd) {
    // ⚠️ ATTN: iPad Users  •••Change this to "pass-through"•••
    return 3;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_StartupViewController = objc_getClass("StartupViewController");
    MSHookMessageEx(_ftt_class_StartupViewController, @selector(forcedOrientation), (IMP)_patched_ftt_meth_$StartupViewController$forcedOrientation, NULL);
    Class _ftt_class_DSOrientationManager = objc_getClass("DSOrientationManager");
    MSHookMessageEx(_ftt_class_DSOrientationManager, @selector(currentForcedInterfaceOrientation), (IMP)_patched_ftt_meth_$DSOrientationManager$currentForcedInterfaceOrientation, NULL);
    Class _ftt_class_FWAd = objc_getClass("FWAd");
    MSHookMessageEx(_ftt_class_FWAd, @selector(adId), (IMP)_patched_ftt_meth_$FWAd$adId, NULL);
    MSHookMessageEx(_ftt_class_DSOrientationManager, @selector(currentForcedInterfaceOrientationMask), (IMP)_patched_ftt_meth_$DSOrientationManager$currentForcedInterfaceOrientationMask, NULL);
}
