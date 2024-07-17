#import <UIKit/UIKit.h>

#include <substrate.h>

static id _patched_ftt_meth_$SBRingerHUDView$init(id self, SEL _cmd) {
    // •
    return NULL;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBRingerHUDView = objc_getClass("SBRingerHUDView");
    MSHookMessageEx(_ftt_class_SBRingerHUDView, @selector(init), (IMP)_patched_ftt_meth_$SBRingerHUDView$init, NULL);
}
