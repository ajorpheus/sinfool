#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$SBMainDisplaySceneManager$_shouldBreadcrumbApplicationSceneEntity$withTransitionContext$(id self, SEL _cmd, id arg1, id arg2) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBMainDisplaySceneManager = objc_getClass("SBMainDisplaySceneManager");
    MSHookMessageEx(_ftt_class_SBMainDisplaySceneManager, @selector(_shouldBreadcrumbApplicationSceneEntity:withTransitionContext:), (IMP)_patched_ftt_meth_$SBMainDisplaySceneManager$_shouldBreadcrumbApplicationSceneEntity$withTransitionContext$, NULL);
}
