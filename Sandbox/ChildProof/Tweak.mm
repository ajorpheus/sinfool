#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$UIToolbarButton$setEnabled$)(id, SEL, bool);
static void _patched_ftt_meth_$UIToolbarButton$setEnabled$(id self, SEL _cmd, bool arg1) {
    // Allow Tool Bar Buttons:  >>>DELETE THIS ENTRY<<<
    arg1 = 0;
    _orig_ftt_meth_$UIToolbarButton$setEnabled$(self, _cmd, arg1);
}

static bool _patched_ftt_meth_$PUAlbumListViewController$canDeleteCollection$(id self, SEL _cmd, id arg1) {
    return 0;
}

static bool _patched_ftt_meth_$PUCloudSharedAlbumViewController$canDeleteContent(id self, SEL _cmd) {
    return 0;
}

static bool _patched_ftt_meth_$PUPhotosGridViewController$canDeleteContent(id self, SEL _cmd) {
    return 0;
}

static bool _patched_ftt_meth_$PUDeletePhotosActionController$shouldSkipDeleteConfirmation(id self, SEL _cmd) {
    return 1;
}

static void (*_orig_ftt_meth_$PUDeletePhotosActionController$_handleFinalUserDecisionShouldDelete$)(id, SEL, bool);
static void _patched_ftt_meth_$PUDeletePhotosActionController$_handleFinalUserDecisionShouldDelete$(id self, SEL _cmd, bool arg1) {
    arg1 = 0;
    _orig_ftt_meth_$PUDeletePhotosActionController$_handleFinalUserDecisionShouldDelete$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_UIToolbarButton = objc_getClass("UIToolbarButton");
    MSHookMessageEx(_ftt_class_UIToolbarButton, @selector(setEnabled:), (IMP)_patched_ftt_meth_$UIToolbarButton$setEnabled$, (IMP *)_orig_ftt_meth_$UIToolbarButton$setEnabled$);
    Class _ftt_class_PUAlbumListViewController = objc_getClass("PUAlbumListViewController");
    MSHookMessageEx(_ftt_class_PUAlbumListViewController, @selector(canDeleteCollection:), (IMP)_patched_ftt_meth_$PUAlbumListViewController$canDeleteCollection$, NULL);
    Class _ftt_class_PUCloudSharedAlbumViewController = objc_getClass("PUCloudSharedAlbumViewController");
    MSHookMessageEx(_ftt_class_PUCloudSharedAlbumViewController, @selector(canDeleteContent), (IMP)_patched_ftt_meth_$PUCloudSharedAlbumViewController$canDeleteContent, NULL);
    Class _ftt_class_PUPhotosGridViewController = objc_getClass("PUPhotosGridViewController");
    MSHookMessageEx(_ftt_class_PUPhotosGridViewController, @selector(canDeleteContent), (IMP)_patched_ftt_meth_$PUPhotosGridViewController$canDeleteContent, NULL);
    Class _ftt_class_PUDeletePhotosActionController = objc_getClass("PUDeletePhotosActionController");
    MSHookMessageEx(_ftt_class_PUDeletePhotosActionController, @selector(shouldSkipDeleteConfirmation), (IMP)_patched_ftt_meth_$PUDeletePhotosActionController$shouldSkipDeleteConfirmation, NULL);
    MSHookMessageEx(_ftt_class_PUDeletePhotosActionController, @selector(_handleFinalUserDecisionShouldDelete:), (IMP)_patched_ftt_meth_$PUDeletePhotosActionController$_handleFinalUserDecisionShouldDelete$, (IMP *)_orig_ftt_meth_$PUDeletePhotosActionController$_handleFinalUserDecisionShouldDelete$);
}
