#import <UIKit/UIKit.h>

#include <substrate.h>

static id _patched_ftt_meth_$ALSoundSourcePool$init(id self, SEL _cmd) {
    return NULL;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_ALSoundSourcePool = objc_getClass("ALSoundSourcePool");
    MSHookMessageEx(_ftt_class_ALSoundSourcePool, @selector(init), (IMP)_patched_ftt_meth_$ALSoundSourcePool$init, NULL);
}
