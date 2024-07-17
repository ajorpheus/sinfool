#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$SBWallpaperEffectView$setStyle$)(id, SEL, long long);
static void _patched_ftt_meth_$SBWallpaperEffectView$setStyle$(id self, SEL _cmd, long long arg1) {
    // No Blur=0, Black=2, Less Blur=3, Lesser Blur=4, Soft Blur=5, Light Gray=9, Frosted Blur=10, Frost=13, Dark Blur=14, White Blur=15, Glass Blur=16, Dark Tint=19
    arg1 = 14;
    _orig_ftt_meth_$SBWallpaperEffectView$setStyle$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBWallpaperEffectView = objc_getClass("SBWallpaperEffectView");
    MSHookMessageEx(_ftt_class_SBWallpaperEffectView, @selector(setStyle:), (IMP)_patched_ftt_meth_$SBWallpaperEffectView$setStyle$, (IMP *)_orig_ftt_meth_$SBWallpaperEffectView$setStyle$);
}
