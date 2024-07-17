#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$BKBlurryWallpaperView$setScrimColor$)(id, SEL, id);
static void _patched_ftt_meth_$BKBlurryWallpaperView$setScrimColor$(id self, SEL _cmd, id arg1) {
    // Set Color...
    arg1 = [UIColor colorWithRed:35/255.0 green:218/255.0 blue:218/255.0 alpha:255/255.0];
    _orig_ftt_meth_$BKBlurryWallpaperView$setScrimColor$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_BKBlurryWallpaperView = objc_getClass("BKBlurryWallpaperView");
    MSHookMessageEx(_ftt_class_BKBlurryWallpaperView, @selector(setScrimColor:), (IMP)_patched_ftt_meth_$BKBlurryWallpaperView$setScrimColor$, (IMP *)_orig_ftt_meth_$BKBlurryWallpaperView$setScrimColor$);
}
