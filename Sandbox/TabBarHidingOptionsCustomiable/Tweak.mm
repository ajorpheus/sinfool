#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$UITabBar$_backgroundNeedsUpdate(id self, SEL _cmd) {
    // Background:  Hide=FALSE, Show=TRUE
    return 0;
}

static id (*_orig_ftt_meth_$UITabBarButton$initWithImage$selectedImage$label$withInsets$)(id, SEL, id, id, id, UIEdgeInsets);
static id _patched_ftt_meth_$UITabBarButton$initWithImage$selectedImage$label$withInsets$(id self, SEL _cmd, id arg1, id arg2, id arg3, UIEdgeInsets arg4) {
    // Images / Labels:	(Arg#1): Images (Arg#3): Labels  [Hide=NULL, Show=pass-through]
    arg3 = NULL;
    return _orig_ftt_meth_$UITabBarButton$initWithImage$selectedImage$label$withInsets$(self, _cmd, arg1, arg2, arg3, arg4);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_UITabBar = objc_getClass("UITabBar");
    MSHookMessageEx(_ftt_class_UITabBar, @selector(_backgroundNeedsUpdate), (IMP)_patched_ftt_meth_$UITabBar$_backgroundNeedsUpdate, NULL);
    Class _ftt_class_UITabBarButton = objc_getClass("UITabBarButton");
    MSHookMessageEx(_ftt_class_UITabBarButton, @selector(initWithImage:selectedImage:label:withInsets:), (IMP)_patched_ftt_meth_$UITabBarButton$initWithImage$selectedImage$label$withInsets$, (IMP *)_orig_ftt_meth_$UITabBarButton$initWithImage$selectedImage$label$withInsets$);
}
