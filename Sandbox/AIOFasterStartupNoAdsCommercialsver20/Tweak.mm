#import <UIKit/UIKit.h>

#include <substrate.h>

static BOOL _patched_ftt_meth_$BETSplashScreenViewController$isVideoFinished(id self, SEL _cmd) {
    return 1;
}

static id _patched_ftt_meth_$GADAdFetcher$init(id self, SEL _cmd) {
    return NULL;
}

static id _patched_ftt_meth_$BETVideoPlayerAdManagerDART$adsManager(id self, SEL _cmd) {
    return NULL;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_BETSplashScreenViewController = objc_getClass("BETSplashScreenViewController");
    MSHookMessageEx(_ftt_class_BETSplashScreenViewController, @selector(isVideoFinished), (IMP)_patched_ftt_meth_$BETSplashScreenViewController$isVideoFinished, NULL);
    Class _ftt_class_GADAdFetcher = objc_getClass("GADAdFetcher");
    MSHookMessageEx(_ftt_class_GADAdFetcher, @selector(init), (IMP)_patched_ftt_meth_$GADAdFetcher$init, NULL);
    Class _ftt_class_BETVideoPlayerAdManagerDART = objc_getClass("BETVideoPlayerAdManagerDART");
    MSHookMessageEx(_ftt_class_BETVideoPlayerAdManagerDART, @selector(adsManager), (IMP)_patched_ftt_meth_$BETVideoPlayerAdManagerDART$adsManager, NULL);
}
