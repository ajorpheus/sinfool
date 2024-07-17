#import <UIKit/UIKit.h>

#include <substrate.h>

static BOOL _patched_ftt_meth_$VKVideoSession$isAdfree(id self, SEL _cmd) {
    return 1;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_VKVideoSession = objc_getClass("VKVideoSession");
    MSHookMessageEx(_ftt_class_VKVideoSession, @selector(isAdfree), (IMP)_patched_ftt_meth_$VKVideoSession$isAdfree, NULL);
}
