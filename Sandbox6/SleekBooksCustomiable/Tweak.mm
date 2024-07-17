#line 1 "Tweak.xm"
#import <UIKit/UIKit.h>


#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

asm(".linker_option \"-framework\", \"CydiaSubstrate\"");

@class BKBlurryWallpaperView; @class UIStatusBarNewUIStyleAttributes; @class UITabBarButton; @class UITabBar; @class IMThemeBookshelf; 
static BOOL (*_logos_orig$_ungrouped$UIStatusBarNewUIStyleAttributes$isTranslucent)(_LOGOS_SELF_TYPE_NORMAL UIStatusBarNewUIStyleAttributes* _LOGOS_SELF_CONST, SEL); static BOOL _logos_method$_ungrouped$UIStatusBarNewUIStyleAttributes$isTranslucent(_LOGOS_SELF_TYPE_NORMAL UIStatusBarNewUIStyleAttributes* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$IMThemeBookshelf$setSearchBackgroundColor$)(_LOGOS_SELF_TYPE_NORMAL IMThemeBookshelf* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$IMThemeBookshelf$setSearchBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL IMThemeBookshelf* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$BKBlurryWallpaperView$setScrimColor$)(_LOGOS_SELF_TYPE_NORMAL BKBlurryWallpaperView* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$BKBlurryWallpaperView$setScrimColor$(_LOGOS_SELF_TYPE_NORMAL BKBlurryWallpaperView* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$UITabBar$setTintColor$)(_LOGOS_SELF_TYPE_NORMAL UITabBar* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$UITabBar$setTintColor$(_LOGOS_SELF_TYPE_NORMAL UITabBar* _LOGOS_SELF_CONST, SEL, id); static BOOL (*_logos_orig$_ungrouped$UITabBar$_backgroundNeedsUpdate)(_LOGOS_SELF_TYPE_NORMAL UITabBar* _LOGOS_SELF_CONST, SEL); static BOOL _logos_method$_ungrouped$UITabBar$_backgroundNeedsUpdate(_LOGOS_SELF_TYPE_NORMAL UITabBar* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$UITabBarButton$_setContentTintColor$forState$)(_LOGOS_SELF_TYPE_NORMAL UITabBarButton* _LOGOS_SELF_CONST, SEL, id, unsigned int); static void _logos_method$_ungrouped$UITabBarButton$_setContentTintColor$forState$(_LOGOS_SELF_TYPE_NORMAL UITabBarButton* _LOGOS_SELF_CONST, SEL, id, unsigned int); static UITabBarButton* (*_logos_orig$_ungrouped$UITabBarButton$initWithImage$selectedImage$label$withInsets$)(_LOGOS_SELF_TYPE_INIT UITabBarButton*, SEL, id, id, id, UIEdgeInsets) _LOGOS_RETURN_RETAINED; static UITabBarButton* _logos_method$_ungrouped$UITabBarButton$initWithImage$selectedImage$label$withInsets$(_LOGOS_SELF_TYPE_INIT UITabBarButton*, SEL, id, id, id, UIEdgeInsets) _LOGOS_RETURN_RETAINED; 

#line 3 "Tweak.xm"

static BOOL _logos_method$_ungrouped$UIStatusBarNewUIStyleAttributes$isTranslucent(_LOGOS_SELF_TYPE_NORMAL UIStatusBarNewUIStyleAttributes* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 1;
}



static void _logos_method$_ungrouped$IMThemeBookshelf$setSearchBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL IMThemeBookshelf* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:18/255.0 green:110/255.0 blue:110/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$IMThemeBookshelf$setSearchBackgroundColor$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$BKBlurryWallpaperView$setScrimColor$(_LOGOS_SELF_TYPE_NORMAL BKBlurryWallpaperView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:35/255.0 green:218/255.0 blue:218/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$BKBlurryWallpaperView$setScrimColor$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$UITabBar$setTintColor$(_LOGOS_SELF_TYPE_NORMAL UITabBar* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:23/255.0 green:143/255.0 blue:143/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$UITabBar$setTintColor$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$UITabBarButton$_setContentTintColor$forState$(_LOGOS_SELF_TYPE_NORMAL UITabBarButton* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, unsigned int arg2) {
    
    arg1 = [UIColor colorWithRed:146/255.0 green:146/255.0 blue:146/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$UITabBarButton$_setContentTintColor$forState$(self, _cmd, arg1, arg2);
}



static UITabBarButton* _logos_method$_ungrouped$UITabBarButton$initWithImage$selectedImage$label$withInsets$(_LOGOS_SELF_TYPE_INIT UITabBarButton* __unused self, SEL __unused _cmd, id arg1, id arg2, id arg3, UIEdgeInsets arg4) _LOGOS_RETURN_RETAINED {
    
    arg3 = NULL;
    return _logos_orig$_ungrouped$UITabBarButton$initWithImage$selectedImage$label$withInsets$(self, _cmd, arg1, arg2, arg3, arg4);
}



static BOOL _logos_method$_ungrouped$UITabBar$_backgroundNeedsUpdate(_LOGOS_SELF_TYPE_NORMAL UITabBar* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 0;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$UIStatusBarNewUIStyleAttributes = objc_getClass("UIStatusBarNewUIStyleAttributes"); { MSHookMessageEx(_logos_class$_ungrouped$UIStatusBarNewUIStyleAttributes, @selector(isTranslucent), (IMP)&_logos_method$_ungrouped$UIStatusBarNewUIStyleAttributes$isTranslucent, (IMP*)&_logos_orig$_ungrouped$UIStatusBarNewUIStyleAttributes$isTranslucent);}Class _logos_class$_ungrouped$IMThemeBookshelf = objc_getClass("IMThemeBookshelf"); { MSHookMessageEx(_logos_class$_ungrouped$IMThemeBookshelf, @selector(setSearchBackgroundColor:), (IMP)&_logos_method$_ungrouped$IMThemeBookshelf$setSearchBackgroundColor$, (IMP*)&_logos_orig$_ungrouped$IMThemeBookshelf$setSearchBackgroundColor$);}Class _logos_class$_ungrouped$BKBlurryWallpaperView = objc_getClass("BKBlurryWallpaperView"); { MSHookMessageEx(_logos_class$_ungrouped$BKBlurryWallpaperView, @selector(setScrimColor:), (IMP)&_logos_method$_ungrouped$BKBlurryWallpaperView$setScrimColor$, (IMP*)&_logos_orig$_ungrouped$BKBlurryWallpaperView$setScrimColor$);}Class _logos_class$_ungrouped$UITabBar = objc_getClass("UITabBar"); { MSHookMessageEx(_logos_class$_ungrouped$UITabBar, @selector(setTintColor:), (IMP)&_logos_method$_ungrouped$UITabBar$setTintColor$, (IMP*)&_logos_orig$_ungrouped$UITabBar$setTintColor$);}{ MSHookMessageEx(_logos_class$_ungrouped$UITabBar, @selector(_backgroundNeedsUpdate), (IMP)&_logos_method$_ungrouped$UITabBar$_backgroundNeedsUpdate, (IMP*)&_logos_orig$_ungrouped$UITabBar$_backgroundNeedsUpdate);}Class _logos_class$_ungrouped$UITabBarButton = objc_getClass("UITabBarButton"); { MSHookMessageEx(_logos_class$_ungrouped$UITabBarButton, @selector(_setContentTintColor:forState:), (IMP)&_logos_method$_ungrouped$UITabBarButton$_setContentTintColor$forState$, (IMP*)&_logos_orig$_ungrouped$UITabBarButton$_setContentTintColor$forState$);}{ MSHookMessageEx(_logos_class$_ungrouped$UITabBarButton, @selector(initWithImage:selectedImage:label:withInsets:), (IMP)&_logos_method$_ungrouped$UITabBarButton$initWithImage$selectedImage$label$withInsets$, (IMP*)&_logos_orig$_ungrouped$UITabBarButton$initWithImage$selectedImage$label$withInsets$);}} }
#line 57 "Tweak.xm"
