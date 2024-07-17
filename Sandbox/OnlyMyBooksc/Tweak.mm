#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$BKLibraryViewController$wantsTabBar(id self, SEL _cmd) {
    // •
    return 0;
}

static bool _patched_ftt_meth_$BKSKTabBarInfo$isLibraryTab(id self, SEL _cmd) {
    // •
    return 1;
}

static bool _patched_ftt_meth_$UITabBar$_backgroundNeedsUpdate(id self, SEL _cmd) {
    // •
    return 0;
}

static id (*_orig_ftt_meth_$UITabBarButton$initWithImage$selectedImage$label$withInsets$)(id, SEL, id, id, id, UIEdgeInsets);
static id _patched_ftt_meth_$UITabBarButton$initWithImage$selectedImage$label$withInsets$(id self, SEL _cmd, id arg1, id arg2, id arg3, UIEdgeInsets arg4) {
    // •
    arg1 = NULL;
    arg3 = NULL;
    return _orig_ftt_meth_$UITabBarButton$initWithImage$selectedImage$label$withInsets$(self, _cmd, arg1, arg2, arg3, arg4);
}

static id _patched_ftt_meth_$SKUITabBarBackgroundView$initWithFrame$(id self, SEL _cmd, CGRect arg1) {
    // •
    return NULL;
}

static bool _patched_ftt_meth_$UITabBar$_wantsAdaptiveBackdrop(id self, SEL _cmd) {
    // •
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_BKLibraryViewController = objc_getClass("BKLibraryViewController");
    MSHookMessageEx(_ftt_class_BKLibraryViewController, @selector(wantsTabBar), (IMP)_patched_ftt_meth_$BKLibraryViewController$wantsTabBar, NULL);
    Class _ftt_class_BKSKTabBarInfo = objc_getClass("BKSKTabBarInfo");
    MSHookMessageEx(_ftt_class_BKSKTabBarInfo, @selector(isLibraryTab), (IMP)_patched_ftt_meth_$BKSKTabBarInfo$isLibraryTab, NULL);
    Class _ftt_class_UITabBar = objc_getClass("UITabBar");
    MSHookMessageEx(_ftt_class_UITabBar, @selector(_backgroundNeedsUpdate), (IMP)_patched_ftt_meth_$UITabBar$_backgroundNeedsUpdate, NULL);
    Class _ftt_class_UITabBarButton = objc_getClass("UITabBarButton");
    MSHookMessageEx(_ftt_class_UITabBarButton, @selector(initWithImage:selectedImage:label:withInsets:), (IMP)_patched_ftt_meth_$UITabBarButton$initWithImage$selectedImage$label$withInsets$, (IMP *)_orig_ftt_meth_$UITabBarButton$initWithImage$selectedImage$label$withInsets$);
    Class _ftt_class_SKUITabBarBackgroundView = objc_getClass("SKUITabBarBackgroundView");
    MSHookMessageEx(_ftt_class_SKUITabBarBackgroundView, @selector(initWithFrame:), (IMP)_patched_ftt_meth_$SKUITabBarBackgroundView$initWithFrame$, NULL);
    MSHookMessageEx(_ftt_class_UITabBar, @selector(_wantsAdaptiveBackdrop), (IMP)_patched_ftt_meth_$UITabBar$_wantsAdaptiveBackdrop, NULL);
}
