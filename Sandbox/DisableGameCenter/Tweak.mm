#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$GKDevice$isGameKitAvailable(id self, SEL _cmd) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_GKDevice = objc_getClass("GKDevice");
    MSHookMessageEx(_ftt_class_GKDevice, @selector(isGameKitAvailable), (IMP)_patched_ftt_meth_$GKDevice$isGameKitAvailable, NULL);
}
