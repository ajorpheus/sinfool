#import <UIKit/UIKit.h>

#include <substrate.h>

static id _patched_ftt_meth_$VersionCheckResponse$init(id self, SEL _cmd) {
    return NULL;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_VersionCheckResponse = objc_getClass("VersionCheckResponse");
    MSHookMessageEx(_ftt_class_VersionCheckResponse, @selector(init), (IMP)_patched_ftt_meth_$VersionCheckResponse$init, NULL);
}
