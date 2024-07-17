#import <UIKit/UIKit.h>

#include <substrate.h>

static id (*_orig_ftt_meth_$UITabBarButtonLabel$_fontForIdiom$)(id, SEL, long long);
static id _patched_ftt_meth_$UITabBarButtonLabel$_fontForIdiom$(id self, SEL _cmd, long long arg1) {
    // Tab Bar - Label Font: (Stock=P, Large=2, Bold=3)
    arg1 = 2;
    return _orig_ftt_meth_$UITabBarButtonLabel$_fontForIdiom$(self, _cmd, arg1);
}

static id (*_orig_ftt_meth_$UITabBarButton$initWithImage$selectedImage$label$withInsets$tabBar$)(id, SEL, id, id, id, UIEdgeInsets, id);
static id _patched_ftt_meth_$UITabBarButton$initWithImage$selectedImage$label$withInsets$tabBar$(id self, SEL _cmd, id arg1, id arg2, id arg3, UIEdgeInsets arg4, id arg5) {
    // Tab Bar - Image:(Arg#1), Label:(Arg#3): (Hide=N)
    arg1 = NULL;
    return _orig_ftt_meth_$UITabBarButton$initWithImage$selectedImage$label$withInsets$tabBar$(self, _cmd, arg1, arg2, arg3, arg4, arg5);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_UITabBarButtonLabel = objc_getClass("UITabBarButtonLabel");
    MSHookMessageEx(_ftt_class_UITabBarButtonLabel, @selector(_fontForIdiom:), (IMP)_patched_ftt_meth_$UITabBarButtonLabel$_fontForIdiom$, (IMP *)_orig_ftt_meth_$UITabBarButtonLabel$_fontForIdiom$);
    Class _ftt_class_UITabBarButton = objc_getClass("UITabBarButton");
    MSHookMessageEx(_ftt_class_UITabBarButton, @selector(initWithImage:selectedImage:label:withInsets:tabBar:), (IMP)_patched_ftt_meth_$UITabBarButton$initWithImage$selectedImage$label$withInsets$tabBar$, (IMP *)_orig_ftt_meth_$UITabBarButton$initWithImage$selectedImage$label$withInsets$tabBar$);
}
