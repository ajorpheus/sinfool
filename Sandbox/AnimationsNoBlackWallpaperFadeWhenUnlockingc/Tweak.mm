#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$SBWallpaperController$setActiveOrientationSource$andUpdateToOrientation$usingCrossfadeToBlack$)(id, SEL, long long, long long, bool);
static void _patched_ftt_meth_$SBWallpaperController$setActiveOrientationSource$andUpdateToOrientation$usingCrossfadeToBlack$(id self, SEL _cmd, long long arg1, long long arg2, bool arg3) {
    arg3 = 0;
    _orig_ftt_meth_$SBWallpaperController$setActiveOrientationSource$andUpdateToOrientation$usingCrossfadeToBlack$(self, _cmd, arg1, arg2, arg3);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBWallpaperController = objc_getClass("SBWallpaperController");
    MSHookMessageEx(_ftt_class_SBWallpaperController, @selector(setActiveOrientationSource:andUpdateToOrientation:usingCrossfadeToBlack:), (IMP)_patched_ftt_meth_$SBWallpaperController$setActiveOrientationSource$andUpdateToOrientation$usingCrossfadeToBlack$, (IMP *)_orig_ftt_meth_$SBWallpaperController$setActiveOrientationSource$andUpdateToOrientation$usingCrossfadeToBlack$);
}
