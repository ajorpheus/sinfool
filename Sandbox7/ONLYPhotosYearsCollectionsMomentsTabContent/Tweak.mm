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

@class PUTabbedLibraryViewControllerPadSpec; @class PUTabbedLibraryViewControllerPhoneSpec; @class PUPhotosGridViewController; 
static id (*_logos_orig$_ungrouped$PUTabbedLibraryViewControllerPhoneSpec$createSharedAlbumListViewController)(_LOGOS_SELF_TYPE_NORMAL PUTabbedLibraryViewControllerPhoneSpec* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$PUTabbedLibraryViewControllerPhoneSpec$createSharedAlbumListViewController(_LOGOS_SELF_TYPE_NORMAL PUTabbedLibraryViewControllerPhoneSpec* _LOGOS_SELF_CONST, SEL); static id (*_logos_orig$_ungrouped$PUTabbedLibraryViewControllerPhoneSpec$createAlbumListViewController)(_LOGOS_SELF_TYPE_NORMAL PUTabbedLibraryViewControllerPhoneSpec* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$PUTabbedLibraryViewControllerPhoneSpec$createAlbumListViewController(_LOGOS_SELF_TYPE_NORMAL PUTabbedLibraryViewControllerPhoneSpec* _LOGOS_SELF_CONST, SEL); static id (*_logos_orig$_ungrouped$PUTabbedLibraryViewControllerPadSpec$createSharedAlbumListViewController)(_LOGOS_SELF_TYPE_NORMAL PUTabbedLibraryViewControllerPadSpec* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$PUTabbedLibraryViewControllerPadSpec$createSharedAlbumListViewController(_LOGOS_SELF_TYPE_NORMAL PUTabbedLibraryViewControllerPadSpec* _LOGOS_SELF_CONST, SEL); static id (*_logos_orig$_ungrouped$PUTabbedLibraryViewControllerPadSpec$createAlbumListViewController)(_LOGOS_SELF_TYPE_NORMAL PUTabbedLibraryViewControllerPadSpec* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$PUTabbedLibraryViewControllerPadSpec$createAlbumListViewController(_LOGOS_SELF_TYPE_NORMAL PUTabbedLibraryViewControllerPadSpec* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$PUPhotosGridViewController$alwaysHideTabBar)(_LOGOS_SELF_TYPE_NORMAL PUPhotosGridViewController* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$PUPhotosGridViewController$alwaysHideTabBar(_LOGOS_SELF_TYPE_NORMAL PUPhotosGridViewController* _LOGOS_SELF_CONST, SEL); 

#line 3 "Tweak.xm"

static id _logos_method$_ungrouped$PUTabbedLibraryViewControllerPhoneSpec$createSharedAlbumListViewController(_LOGOS_SELF_TYPE_NORMAL PUTabbedLibraryViewControllerPhoneSpec* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return NULL;
}



static id _logos_method$_ungrouped$PUTabbedLibraryViewControllerPadSpec$createSharedAlbumListViewController(_LOGOS_SELF_TYPE_NORMAL PUTabbedLibraryViewControllerPadSpec* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return NULL;
}



static id _logos_method$_ungrouped$PUTabbedLibraryViewControllerPhoneSpec$createAlbumListViewController(_LOGOS_SELF_TYPE_NORMAL PUTabbedLibraryViewControllerPhoneSpec* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return NULL;
}



static id _logos_method$_ungrouped$PUTabbedLibraryViewControllerPadSpec$createAlbumListViewController(_LOGOS_SELF_TYPE_NORMAL PUTabbedLibraryViewControllerPadSpec* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return NULL;
}



static bool _logos_method$_ungrouped$PUPhotosGridViewController$alwaysHideTabBar(_LOGOS_SELF_TYPE_NORMAL PUPhotosGridViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 1;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$PUTabbedLibraryViewControllerPhoneSpec = objc_getClass("PUTabbedLibraryViewControllerPhoneSpec"); { MSHookMessageEx(_logos_class$_ungrouped$PUTabbedLibraryViewControllerPhoneSpec, @selector(createSharedAlbumListViewController), (IMP)&_logos_method$_ungrouped$PUTabbedLibraryViewControllerPhoneSpec$createSharedAlbumListViewController, (IMP*)&_logos_orig$_ungrouped$PUTabbedLibraryViewControllerPhoneSpec$createSharedAlbumListViewController);}{ MSHookMessageEx(_logos_class$_ungrouped$PUTabbedLibraryViewControllerPhoneSpec, @selector(createAlbumListViewController), (IMP)&_logos_method$_ungrouped$PUTabbedLibraryViewControllerPhoneSpec$createAlbumListViewController, (IMP*)&_logos_orig$_ungrouped$PUTabbedLibraryViewControllerPhoneSpec$createAlbumListViewController);}Class _logos_class$_ungrouped$PUTabbedLibraryViewControllerPadSpec = objc_getClass("PUTabbedLibraryViewControllerPadSpec"); { MSHookMessageEx(_logos_class$_ungrouped$PUTabbedLibraryViewControllerPadSpec, @selector(createSharedAlbumListViewController), (IMP)&_logos_method$_ungrouped$PUTabbedLibraryViewControllerPadSpec$createSharedAlbumListViewController, (IMP*)&_logos_orig$_ungrouped$PUTabbedLibraryViewControllerPadSpec$createSharedAlbumListViewController);}{ MSHookMessageEx(_logos_class$_ungrouped$PUTabbedLibraryViewControllerPadSpec, @selector(createAlbumListViewController), (IMP)&_logos_method$_ungrouped$PUTabbedLibraryViewControllerPadSpec$createAlbumListViewController, (IMP*)&_logos_orig$_ungrouped$PUTabbedLibraryViewControllerPadSpec$createAlbumListViewController);}Class _logos_class$_ungrouped$PUPhotosGridViewController = objc_getClass("PUPhotosGridViewController"); { MSHookMessageEx(_logos_class$_ungrouped$PUPhotosGridViewController, @selector(alwaysHideTabBar), (IMP)&_logos_method$_ungrouped$PUPhotosGridViewController$alwaysHideTabBar, (IMP*)&_logos_orig$_ungrouped$PUPhotosGridViewController$alwaysHideTabBar);}} }
#line 33 "Tweak.xm"
