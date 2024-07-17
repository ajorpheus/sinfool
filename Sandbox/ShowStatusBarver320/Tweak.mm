#import <UIKit/UIKit.h>

#include <substrate.h>

static id _patched_ftt_meth_$SPTStatusBarManager$hideStatusBarWithAnimation$(id self, SEL _cmd, long long arg1) {
    return NULL;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SPTStatusBarManager = objc_getClass("SPTStatusBarManager");
    MSHookMessageEx(_ftt_class_SPTStatusBarManager, @selector(hideStatusBarWithAnimation:), (IMP)_patched_ftt_meth_$SPTStatusBarManager$hideStatusBarWithAnimation$, NULL);
}
