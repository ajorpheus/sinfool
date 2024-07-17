#import <UIKit/UIKit.h>

#include <substrate.h>

static long long _patched_ftt_meth_$SBApplication$wallpaperStyle(id self, SEL _cmd) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBApplication = objc_getClass("SBApplication");
    MSHookMessageEx(_ftt_class_SBApplication, @selector(wallpaperStyle), (IMP)_patched_ftt_meth_$SBApplication$wallpaperStyle, NULL);
}
