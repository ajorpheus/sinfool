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

@class PUTabbedLibraryViewControllerPadSpec; @class PUTabbedLibraryViewControllerPhoneSpec; @class PUTabbedLibraryViewController; @class UITabBarButton; @class UITabBar; @class PUPhotosGridViewController; 
static int (*_logos_orig$_ungrouped$PUTabbedLibraryViewController$selectedContentMode)(_LOGOS_SELF_TYPE_NORMAL PUTabbedLibraryViewController* _LOGOS_SELF_CONST, SEL); static int _logos_method$_ungrouped$PUTabbedLibraryViewController$selectedContentMode(_LOGOS_SELF_TYPE_NORMAL PUTabbedLibraryViewController* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$PUTabbedLibraryViewController$setSelectedContentMode$)(_LOGOS_SELF_TYPE_NORMAL PUTabbedLibraryViewController* _LOGOS_SELF_CONST, SEL, int); static void _logos_method$_ungrouped$PUTabbedLibraryViewController$setSelectedContentMode$(_LOGOS_SELF_TYPE_NORMAL PUTabbedLibraryViewController* _LOGOS_SELF_CONST, SEL, int); static id (*_logos_orig$_ungrouped$PUTabbedLibraryViewControllerPhoneSpec$createSharedAlbumListViewController)(_LOGOS_SELF_TYPE_NORMAL PUTabbedLibraryViewControllerPhoneSpec* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$PUTabbedLibraryViewControllerPhoneSpec$createSharedAlbumListViewController(_LOGOS_SELF_TYPE_NORMAL PUTabbedLibraryViewControllerPhoneSpec* _LOGOS_SELF_CONST, SEL); static id (*_logos_orig$_ungrouped$PUTabbedLibraryViewControllerPadSpec$createSharedAlbumListViewController)(_LOGOS_SELF_TYPE_NORMAL PUTabbedLibraryViewControllerPadSpec* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$PUTabbedLibraryViewControllerPadSpec$createSharedAlbumListViewController(_LOGOS_SELF_TYPE_NORMAL PUTabbedLibraryViewControllerPadSpec* _LOGOS_SELF_CONST, SEL); static UITabBarButton* (*_logos_orig$_ungrouped$UITabBarButton$initWithImage$selectedImage$label$withInsets$)(_LOGOS_SELF_TYPE_INIT UITabBarButton*, SEL, id, id, id, UIEdgeInsets) _LOGOS_RETURN_RETAINED; static UITabBarButton* _logos_method$_ungrouped$UITabBarButton$initWithImage$selectedImage$label$withInsets$(_LOGOS_SELF_TYPE_INIT UITabBarButton*, SEL, id, id, id, UIEdgeInsets) _LOGOS_RETURN_RETAINED; static bool (*_logos_orig$_ungrouped$UITabBar$_backgroundNeedsUpdate)(_LOGOS_SELF_TYPE_NORMAL UITabBar* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$UITabBar$_backgroundNeedsUpdate(_LOGOS_SELF_TYPE_NORMAL UITabBar* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$PUPhotosGridViewController$alwaysHideTabBar)(_LOGOS_SELF_TYPE_NORMAL PUPhotosGridViewController* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$PUPhotosGridViewController$alwaysHideTabBar(_LOGOS_SELF_TYPE_NORMAL PUPhotosGridViewController* _LOGOS_SELF_CONST, SEL); 

#line 3 "Tweak.xm"

static int _logos_method$_ungrouped$PUTabbedLibraryViewController$selectedContentMode(_LOGOS_SELF_TYPE_NORMAL PUTabbedLibraryViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 2;
}



static void _logos_method$_ungrouped$PUTabbedLibraryViewController$setSelectedContentMode$(_LOGOS_SELF_TYPE_NORMAL PUTabbedLibraryViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, int arg1) {
    arg1 = 2;
    _logos_orig$_ungrouped$PUTabbedLibraryViewController$setSelectedContentMode$(self, _cmd, arg1);
}



static id _logos_method$_ungrouped$PUTabbedLibraryViewControllerPhoneSpec$createSharedAlbumListViewController(_LOGOS_SELF_TYPE_NORMAL PUTabbedLibraryViewControllerPhoneSpec* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return NULL;
}



static id _logos_method$_ungrouped$PUTabbedLibraryViewControllerPadSpec$createSharedAlbumListViewController(_LOGOS_SELF_TYPE_NORMAL PUTabbedLibraryViewControllerPadSpec* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return NULL;
}



static UITabBarButton* _logos_method$_ungrouped$UITabBarButton$initWithImage$selectedImage$label$withInsets$(_LOGOS_SELF_TYPE_INIT UITabBarButton* __unused self, SEL __unused _cmd, id arg1, id arg2, id arg3, UIEdgeInsets arg4) _LOGOS_RETURN_RETAINED {
    return NULL;
}



static bool _logos_method$_ungrouped$UITabBar$_backgroundNeedsUpdate(_LOGOS_SELF_TYPE_NORMAL UITabBar* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 0;
}



static bool _logos_method$_ungrouped$PUPhotosGridViewController$alwaysHideTabBar(_LOGOS_SELF_TYPE_NORMAL PUPhotosGridViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 1;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$PUTabbedLibraryViewController = objc_getClass("PUTabbedLibraryViewController"); { MSHookMessageEx(_logos_class$_ungrouped$PUTabbedLibraryViewController, @selector(selectedContentMode), (IMP)&_logos_method$_ungrouped$PUTabbedLibraryViewController$selectedContentMode, (IMP*)&_logos_orig$_ungrouped$PUTabbedLibraryViewController$selectedContentMode);}{ MSHookMessageEx(_logos_class$_ungrouped$PUTabbedLibraryViewController, @selector(setSelectedContentMode:), (IMP)&_logos_method$_ungrouped$PUTabbedLibraryViewController$setSelectedContentMode$, (IMP*)&_logos_orig$_ungrouped$PUTabbedLibraryViewController$setSelectedContentMode$);}Class _logos_class$_ungrouped$PUTabbedLibraryViewControllerPhoneSpec = objc_getClass("PUTabbedLibraryViewControllerPhoneSpec"); { MSHookMessageEx(_logos_class$_ungrouped$PUTabbedLibraryViewControllerPhoneSpec, @selector(createSharedAlbumListViewController), (IMP)&_logos_method$_ungrouped$PUTabbedLibraryViewControllerPhoneSpec$createSharedAlbumListViewController, (IMP*)&_logos_orig$_ungrouped$PUTabbedLibraryViewControllerPhoneSpec$createSharedAlbumListViewController);}Class _logos_class$_ungrouped$PUTabbedLibraryViewControllerPadSpec = objc_getClass("PUTabbedLibraryViewControllerPadSpec"); { MSHookMessageEx(_logos_class$_ungrouped$PUTabbedLibraryViewControllerPadSpec, @selector(createSharedAlbumListViewController), (IMP)&_logos_method$_ungrouped$PUTabbedLibraryViewControllerPadSpec$createSharedAlbumListViewController, (IMP*)&_logos_orig$_ungrouped$PUTabbedLibraryViewControllerPadSpec$createSharedAlbumListViewController);}Class _logos_class$_ungrouped$UITabBarButton = objc_getClass("UITabBarButton"); { MSHookMessageEx(_logos_class$_ungrouped$UITabBarButton, @selector(initWithImage:selectedImage:label:withInsets:), (IMP)&_logos_method$_ungrouped$UITabBarButton$initWithImage$selectedImage$label$withInsets$, (IMP*)&_logos_orig$_ungrouped$UITabBarButton$initWithImage$selectedImage$label$withInsets$);}Class _logos_class$_ungrouped$UITabBar = objc_getClass("UITabBar"); { MSHookMessageEx(_logos_class$_ungrouped$UITabBar, @selector(_backgroundNeedsUpdate), (IMP)&_logos_method$_ungrouped$UITabBar$_backgroundNeedsUpdate, (IMP*)&_logos_orig$_ungrouped$UITabBar$_backgroundNeedsUpdate);}Class _logos_class$_ungrouped$PUPhotosGridViewController = objc_getClass("PUPhotosGridViewController"); { MSHookMessageEx(_logos_class$_ungrouped$PUPhotosGridViewController, @selector(alwaysHideTabBar), (IMP)&_logos_method$_ungrouped$PUPhotosGridViewController$alwaysHideTabBar, (IMP*)&_logos_orig$_ungrouped$PUPhotosGridViewController$alwaysHideTabBar);}} }
#line 46 "Tweak.xm"
