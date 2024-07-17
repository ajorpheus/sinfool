#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$ANVFreewheelAdConfig$isActive(id self, SEL _cmd) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_ANVFreewheelAdConfig = objc_getClass("ANVFreewheelAdConfig");
    MSHookMessageEx(_ftt_class_ANVFreewheelAdConfig, @selector(isActive), (IMP)_patched_ftt_meth_$ANVFreewheelAdConfig$isActive, NULL);
}
