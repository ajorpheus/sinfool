#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$CABackdropLayer$isEnabled(id self, SEL _cmd) {
    return 0;
}

static bool _patched_ftt_meth_$UITabBar$_backgroundNeedsUpdate(id self, SEL _cmd) {
    return 0;
}

static id _patched_ftt_meth_$SKUITabBarBackgroundView$initWithFrame$(id self, SEL _cmd, CGRect arg1) {
    return NULL;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_CABackdropLayer = objc_getClass("CABackdropLayer");
    MSHookMessageEx(_ftt_class_CABackdropLayer, @selector(isEnabled), (IMP)_patched_ftt_meth_$CABackdropLayer$isEnabled, NULL);
    Class _ftt_class_UITabBar = objc_getClass("UITabBar");
    MSHookMessageEx(_ftt_class_UITabBar, @selector(_backgroundNeedsUpdate), (IMP)_patched_ftt_meth_$UITabBar$_backgroundNeedsUpdate, NULL);
    Class _ftt_class_SKUITabBarBackgroundView = objc_getClass("SKUITabBarBackgroundView");
    MSHookMessageEx(_ftt_class_SKUITabBarBackgroundView, @selector(initWithFrame:), (IMP)_patched_ftt_meth_$SKUITabBarBackgroundView$initWithFrame$, NULL);
}
