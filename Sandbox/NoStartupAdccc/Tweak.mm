#import <UIKit/UIKit.h>

#include <substrate.h>

static BOOL _patched_ftt_meth_$AETNVideoSplashScreenViewController$isFinished(id self, SEL _cmd) {
    return 1;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_AETNVideoSplashScreenViewController = objc_getClass("AETNVideoSplashScreenViewController");
    MSHookMessageEx(_ftt_class_AETNVideoSplashScreenViewController, @selector(isFinished), (IMP)_patched_ftt_meth_$AETNVideoSplashScreenViewController$isFinished, NULL);
}
