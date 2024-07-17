#import <UIKit/UIKit.h>

#include <substrate.h>

static long long _patched_ftt_meth_$UIDevice$userInterfaceIdiom(id self, SEL _cmd) {
    return 1;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_UIDevice = objc_getClass("UIDevice");
    MSHookMessageEx(_ftt_class_UIDevice, @selector(userInterfaceIdiom), (IMP)_patched_ftt_meth_$UIDevice$userInterfaceIdiom, NULL);
}
