#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$BKLibraryViewController$wantsTabBar(id self, SEL _cmd) {
    return 0;
}

static bool _patched_ftt_meth_$BKSKTabBarInfo$isLibraryTab(id self, SEL _cmd) {
    return 1;
}

static bool _patched_ftt_meth_$UITabBar$_backgroundNeedsUpdate(id self, SEL _cmd) {
    return 0;
}

static bool _patched_ftt_meth_$UITabBar$_wantsAdaptiveBackdrop(id self, SEL _cmd) {
    return 0;
}

static id _patched_ftt_meth_$SKUITabBarBackgroundView$initWithFrame$(id self, SEL _cmd, CGRect arg1) {
    return NULL;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_BKLibraryViewController = objc_getClass("BKLibraryViewController");
    MSHookMessageEx(_ftt_class_BKLibraryViewController, @selector(wantsTabBar), (IMP)_patched_ftt_meth_$BKLibraryViewController$wantsTabBar, NULL);
    Class _ftt_class_BKSKTabBarInfo = objc_getClass("BKSKTabBarInfo");
    MSHookMessageEx(_ftt_class_BKSKTabBarInfo, @selector(isLibraryTab), (IMP)_patched_ftt_meth_$BKSKTabBarInfo$isLibraryTab, NULL);
    Class _ftt_class_UITabBar = objc_getClass("UITabBar");
    MSHookMessageEx(_ftt_class_UITabBar, @selector(_backgroundNeedsUpdate), (IMP)_patched_ftt_meth_$UITabBar$_backgroundNeedsUpdate, NULL);
    MSHookMessageEx(_ftt_class_UITabBar, @selector(_wantsAdaptiveBackdrop), (IMP)_patched_ftt_meth_$UITabBar$_wantsAdaptiveBackdrop, NULL);
    Class _ftt_class_SKUITabBarBackgroundView = objc_getClass("SKUITabBarBackgroundView");
    MSHookMessageEx(_ftt_class_SKUITabBarBackgroundView, @selector(initWithFrame:), (IMP)_patched_ftt_meth_$SKUITabBarBackgroundView$initWithFrame$, NULL);
}
