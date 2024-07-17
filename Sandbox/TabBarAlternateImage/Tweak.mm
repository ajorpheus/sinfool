#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$UITabBarSwappableImageView$showAlternateImage$)(id, SEL, bool);
static void _patched_ftt_meth_$UITabBarSwappableImageView$showAlternateImage$(id self, SEL _cmd, bool arg1) {
    // •
    arg1 = 1;
    _orig_ftt_meth_$UITabBarSwappableImageView$showAlternateImage$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_UITabBarSwappableImageView = objc_getClass("UITabBarSwappableImageView");
    MSHookMessageEx(_ftt_class_UITabBarSwappableImageView, @selector(showAlternateImage:), (IMP)_patched_ftt_meth_$UITabBarSwappableImageView$showAlternateImage$, (IMP *)_orig_ftt_meth_$UITabBarSwappableImageView$showAlternateImage$);
}
