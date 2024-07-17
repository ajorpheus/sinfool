#import <UIKit/UIKit.h>

#include <substrate.h>

static id _patched_ftt_meth_$PUTabbedLibraryViewControllerPhoneSpec$createSharedAlbumListViewController(id self, SEL _cmd) {
    return NULL;
}

static id _patched_ftt_meth_$PUTabbedLibraryViewControllerPadSpec$createSharedAlbumListViewController(id self, SEL _cmd) {
    return NULL;
}

static id _patched_ftt_meth_$PUTabbedLibraryViewControllerPhoneSpec$createAlbumListViewController(id self, SEL _cmd) {
    return NULL;
}

static id _patched_ftt_meth_$PUTabbedLibraryViewControllerPadSpec$createAlbumListViewController(id self, SEL _cmd) {
    return NULL;
}

static bool _patched_ftt_meth_$PUPhotosGridViewController$alwaysHideTabBar(id self, SEL _cmd) {
    return 1;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_PUTabbedLibraryViewControllerPhoneSpec = objc_getClass("PUTabbedLibraryViewControllerPhoneSpec");
    MSHookMessageEx(_ftt_class_PUTabbedLibraryViewControllerPhoneSpec, @selector(createSharedAlbumListViewController), (IMP)_patched_ftt_meth_$PUTabbedLibraryViewControllerPhoneSpec$createSharedAlbumListViewController, NULL);
    Class _ftt_class_PUTabbedLibraryViewControllerPadSpec = objc_getClass("PUTabbedLibraryViewControllerPadSpec");
    MSHookMessageEx(_ftt_class_PUTabbedLibraryViewControllerPadSpec, @selector(createSharedAlbumListViewController), (IMP)_patched_ftt_meth_$PUTabbedLibraryViewControllerPadSpec$createSharedAlbumListViewController, NULL);
    MSHookMessageEx(_ftt_class_PUTabbedLibraryViewControllerPhoneSpec, @selector(createAlbumListViewController), (IMP)_patched_ftt_meth_$PUTabbedLibraryViewControllerPhoneSpec$createAlbumListViewController, NULL);
    MSHookMessageEx(_ftt_class_PUTabbedLibraryViewControllerPadSpec, @selector(createAlbumListViewController), (IMP)_patched_ftt_meth_$PUTabbedLibraryViewControllerPadSpec$createAlbumListViewController, NULL);
    Class _ftt_class_PUPhotosGridViewController = objc_getClass("PUPhotosGridViewController");
    MSHookMessageEx(_ftt_class_PUPhotosGridViewController, @selector(alwaysHideTabBar), (IMP)_patched_ftt_meth_$PUPhotosGridViewController$alwaysHideTabBar, NULL);
}
