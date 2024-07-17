#import <UIKit/UIKit.h>

#include <substrate.h>

static id _patched_ftt_meth_$SBVolumeHUDView$init(id self, SEL _cmd) {
    return NULL;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBVolumeHUDView = objc_getClass("SBVolumeHUDView");
    MSHookMessageEx(_ftt_class_SBVolumeHUDView, @selector(init), (IMP)_patched_ftt_meth_$SBVolumeHUDView$init, NULL);
}
