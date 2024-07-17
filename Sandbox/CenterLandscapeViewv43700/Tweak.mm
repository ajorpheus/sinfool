#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$TopViewVC$floating(id self, SEL _cmd) {
    return 1;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_TopViewVC = objc_getClass("TopViewVC");
    MSHookMessageEx(_ftt_class_TopViewVC, @selector(floating), (IMP)_patched_ftt_meth_$TopViewVC$floating, NULL);
}
