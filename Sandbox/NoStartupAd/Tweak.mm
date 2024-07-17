#import <UIKit/UIKit.h>

#include <substrate.h>

static BOOL _patched_ftt_meth_$SNISplashScreenViewController$isVideoFinished(id self, SEL _cmd) {
    return 1;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SNISplashScreenViewController = objc_getClass("SNISplashScreenViewController");
    MSHookMessageEx(_ftt_class_SNISplashScreenViewController, @selector(isVideoFinished), (IMP)_patched_ftt_meth_$SNISplashScreenViewController$isVideoFinished, NULL);
}
