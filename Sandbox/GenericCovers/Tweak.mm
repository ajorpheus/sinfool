#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$BKImageCache$forceGenericCovers(id self, SEL _cmd) {
    // •
    return 1;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_BKImageCache = objc_getClass("BKImageCache");
    MSHookMessageEx(_ftt_class_BKImageCache, @selector(forceGenericCovers), (IMP)_patched_ftt_meth_$BKImageCache$forceGenericCovers, NULL);
}
