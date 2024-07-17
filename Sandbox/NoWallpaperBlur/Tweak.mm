#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$SBWallpaperController$_updateEffectViewForVariant$withFactory$(id self, SEL _cmd, long long arg1, id arg2) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBWallpaperController = objc_getClass("SBWallpaperController");
    MSHookMessageEx(_ftt_class_SBWallpaperController, @selector(_updateEffectViewForVariant:withFactory:), (IMP)_patched_ftt_meth_$SBWallpaperController$_updateEffectViewForVariant$withFactory$, NULL);
}
