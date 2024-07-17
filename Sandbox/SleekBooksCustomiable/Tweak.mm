#import <UIKit/UIKit.h>

#include <substrate.h>

static BOOL _patched_ftt_meth_$UIStatusBarNewUIStyleAttributes$isTranslucent(id self, SEL _cmd) {
    // •
    return 1;
}

static void (*_orig_ftt_meth_$IMThemeBookshelf$setSearchBackgroundColor$)(id, SEL, id);
static void _patched_ftt_meth_$IMThemeBookshelf$setSearchBackgroundColor$(id self, SEL _cmd, id arg1) {
    // Search Bar
    arg1 = [UIColor colorWithRed:18/255.0 green:110/255.0 blue:110/255.0 alpha:255/255.0];
    _orig_ftt_meth_$IMThemeBookshelf$setSearchBackgroundColor$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$BKBlurryWallpaperView$setScrimColor$)(id, SEL, id);
static void _patched_ftt_meth_$BKBlurryWallpaperView$setScrimColor$(id self, SEL _cmd, id arg1) {
    // Wallpaper
    arg1 = [UIColor colorWithRed:35/255.0 green:218/255.0 blue:218/255.0 alpha:255/255.0];
    _orig_ftt_meth_$BKBlurryWallpaperView$setScrimColor$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$UITabBar$setTintColor$)(id, SEL, id);
static void _patched_ftt_meth_$UITabBar$setTintColor$(id self, SEL _cmd, id arg1) {
    // Tab Bar Image (Selected)
    arg1 = [UIColor colorWithRed:23/255.0 green:143/255.0 blue:143/255.0 alpha:255/255.0];
    _orig_ftt_meth_$UITabBar$setTintColor$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$UITabBarButton$_setContentTintColor$forState$)(id, SEL, id, unsigned int);
static void _patched_ftt_meth_$UITabBarButton$_setContentTintColor$forState$(id self, SEL _cmd, id arg1, unsigned int arg2) {
    // Tab Bar Image (Unselected)
    arg1 = [UIColor colorWithRed:146/255.0 green:146/255.0 blue:146/255.0 alpha:255/255.0];
    _orig_ftt_meth_$UITabBarButton$_setContentTintColor$forState$(self, _cmd, arg1, arg2);
}

static id (*_orig_ftt_meth_$UITabBarButton$initWithImage$selectedImage$label$withInsets$)(id, SEL, id, id, id, UIEdgeInsets);
static id _patched_ftt_meth_$UITabBarButton$initWithImage$selectedImage$label$withInsets$(id self, SEL _cmd, id arg1, id arg2, id arg3, UIEdgeInsets arg4) {
    // Hide Tab Bar Items:  [NULL=Hide] (Arg#1):Image, (Arg#3):Label
    arg3 = NULL;
    return _orig_ftt_meth_$UITabBarButton$initWithImage$selectedImage$label$withInsets$(self, _cmd, arg1, arg2, arg3, arg4);
}

static BOOL _patched_ftt_meth_$UITabBar$_backgroundNeedsUpdate(id self, SEL _cmd) {
    // Hide Tab Bar Background:	Yes=FALSE
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_UIStatusBarNewUIStyleAttributes = objc_getClass("UIStatusBarNewUIStyleAttributes");
    MSHookMessageEx(_ftt_class_UIStatusBarNewUIStyleAttributes, @selector(isTranslucent), (IMP)_patched_ftt_meth_$UIStatusBarNewUIStyleAttributes$isTranslucent, NULL);
    Class _ftt_class_IMThemeBookshelf = objc_getClass("IMThemeBookshelf");
    MSHookMessageEx(_ftt_class_IMThemeBookshelf, @selector(setSearchBackgroundColor:), (IMP)_patched_ftt_meth_$IMThemeBookshelf$setSearchBackgroundColor$, (IMP *)_orig_ftt_meth_$IMThemeBookshelf$setSearchBackgroundColor$);
    Class _ftt_class_BKBlurryWallpaperView = objc_getClass("BKBlurryWallpaperView");
    MSHookMessageEx(_ftt_class_BKBlurryWallpaperView, @selector(setScrimColor:), (IMP)_patched_ftt_meth_$BKBlurryWallpaperView$setScrimColor$, (IMP *)_orig_ftt_meth_$BKBlurryWallpaperView$setScrimColor$);
    Class _ftt_class_UITabBar = objc_getClass("UITabBar");
    MSHookMessageEx(_ftt_class_UITabBar, @selector(setTintColor:), (IMP)_patched_ftt_meth_$UITabBar$setTintColor$, (IMP *)_orig_ftt_meth_$UITabBar$setTintColor$);
    Class _ftt_class_UITabBarButton = objc_getClass("UITabBarButton");
    MSHookMessageEx(_ftt_class_UITabBarButton, @selector(_setContentTintColor:forState:), (IMP)_patched_ftt_meth_$UITabBarButton$_setContentTintColor$forState$, (IMP *)_orig_ftt_meth_$UITabBarButton$_setContentTintColor$forState$);
    MSHookMessageEx(_ftt_class_UITabBarButton, @selector(initWithImage:selectedImage:label:withInsets:), (IMP)_patched_ftt_meth_$UITabBarButton$initWithImage$selectedImage$label$withInsets$, (IMP *)_orig_ftt_meth_$UITabBarButton$initWithImage$selectedImage$label$withInsets$);
    MSHookMessageEx(_ftt_class_UITabBar, @selector(_backgroundNeedsUpdate), (IMP)_patched_ftt_meth_$UITabBar$_backgroundNeedsUpdate, NULL);
}
