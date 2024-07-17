#import <UIKit/UIKit.h>

#include <substrate.h>

static BOOL _patched_ftt_meth_$NBCDSplashScreenViewController$isVideoFinished(id self, SEL _cmd) {
    return 1;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_NBCDSplashScreenViewController = objc_getClass("NBCDSplashScreenViewController");
    MSHookMessageEx(_ftt_class_NBCDSplashScreenViewController, @selector(isVideoFinished), (IMP)_patched_ftt_meth_$NBCDSplashScreenViewController$isVideoFinished, NULL);
}
