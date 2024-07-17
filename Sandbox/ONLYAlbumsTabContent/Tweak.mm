#import <UIKit/UIKit.h>

#include <substrate.h>

static int _patched_ftt_meth_$PUTabbedLibraryViewController$selectedContentMode(id self, SEL _cmd) {
    return 2;
}

static void (*_orig_ftt_meth_$PUTabbedLibraryViewController$setSelectedContentMode$)(id, SEL, int);
static void _patched_ftt_meth_$PUTabbedLibraryViewController$setSelectedContentMode$(id self, SEL _cmd, int arg1) {
    arg1 = 2;
    _orig_ftt_meth_$PUTabbedLibraryViewController$setSelectedContentMode$(self, _cmd, arg1);
}

static id _patched_ftt_meth_$PUTabbedLibraryViewControllerPhoneSpec$createSharedAlbumListViewController(id self, SEL _cmd) {
    return NULL;
}

static id _patched_ftt_meth_$PUTabbedLibraryViewControllerPadSpec$createSharedAlbumListViewController(id self, SEL _cmd) {
    return NULL;
}

static id _patched_ftt_meth_$UITabBarButton$initWithImage$selectedImage$label$withInsets$(id self, SEL _cmd, id arg1, id arg2, id arg3, UIEdgeInsets arg4) {
    return NULL;
}

static bool _patched_ftt_meth_$UITabBar$_backgroundNeedsUpdate(id self, SEL _cmd) {
    return 0;
}

static bool _patched_ftt_meth_$PUPhotosGridViewController$alwaysHideTabBar(id self, SEL _cmd) {
    return 1;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_PUTabbedLibraryViewController = objc_getClass("PUTabbedLibraryViewController");
    MSHookMessageEx(_ftt_class_PUTabbedLibraryViewController, @selector(selectedContentMode), (IMP)_patched_ftt_meth_$PUTabbedLibraryViewController$selectedContentMode, NULL);
    MSHookMessageEx(_ftt_class_PUTabbedLibraryViewController, @selector(setSelectedContentMode:), (IMP)_patched_ftt_meth_$PUTabbedLibraryViewController$setSelectedContentMode$, (IMP *)_orig_ftt_meth_$PUTabbedLibraryViewController$setSelectedContentMode$);
    Class _ftt_class_PUTabbedLibraryViewControllerPhoneSpec = objc_getClass("PUTabbedLibraryViewControllerPhoneSpec");
    MSHookMessageEx(_ftt_class_PUTabbedLibraryViewControllerPhoneSpec, @selector(createSharedAlbumListViewController), (IMP)_patched_ftt_meth_$PUTabbedLibraryViewControllerPhoneSpec$createSharedAlbumListViewController, NULL);
    Class _ftt_class_PUTabbedLibraryViewControllerPadSpec = objc_getClass("PUTabbedLibraryViewControllerPadSpec");
    MSHookMessageEx(_ftt_class_PUTabbedLibraryViewControllerPadSpec, @selector(createSharedAlbumListViewController), (IMP)_patched_ftt_meth_$PUTabbedLibraryViewControllerPadSpec$createSharedAlbumListViewController, NULL);
    Class _ftt_class_UITabBarButton = objc_getClass("UITabBarButton");
    MSHookMessageEx(_ftt_class_UITabBarButton, @selector(initWithImage:selectedImage:label:withInsets:), (IMP)_patched_ftt_meth_$UITabBarButton$initWithImage$selectedImage$label$withInsets$, NULL);
    Class _ftt_class_UITabBar = objc_getClass("UITabBar");
    MSHookMessageEx(_ftt_class_UITabBar, @selector(_backgroundNeedsUpdate), (IMP)_patched_ftt_meth_$UITabBar$_backgroundNeedsUpdate, NULL);
    Class _ftt_class_PUPhotosGridViewController = objc_getClass("PUPhotosGridViewController");
    MSHookMessageEx(_ftt_class_PUPhotosGridViewController, @selector(alwaysHideTabBar), (IMP)_patched_ftt_meth_$PUPhotosGridViewController$alwaysHideTabBar, NULL);
}
