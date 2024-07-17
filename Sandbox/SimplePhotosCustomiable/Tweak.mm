#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$PUPhotosGridViewController$allowSelectAllButton(id self, SEL _cmd) {
    // Photos/Moments - Enable Select All Button
    return 1;
}

static bool _patched_ftt_meth_$PUPhotosAlbumViewController$allowSelectAllButton(id self, SEL _cmd) {
    // Camera Roll - Enable Select All Button
    return 1;
}

static bool _patched_ftt_meth_$PUAlbumListViewController$disallowsSearch(id self, SEL _cmd) {
    // Albums - Disable Search
    return 1;
}

static void (*_orig_ftt_meth_$PUAlbumListViewController$navigateToCollection$animated$completion$)(id, SEL, id, bool, id);
static void _patched_ftt_meth_$PUAlbumListViewController$navigateToCollection$animated$completion$(id self, SEL _cmd, id arg1, bool arg2, id arg3) {
    // Albums - Disable Open Animation: {(Arg#2): YES=F, NO=T}
    arg2 = 0;
    _orig_ftt_meth_$PUAlbumListViewController$navigateToCollection$animated$completion$(self, _cmd, arg1, arg2, arg3);
}

static bool _patched_ftt_meth_$PXPhotoKitCollectionsDataSourceManager$canReorderCollection$(id self, SEL _cmd, id arg1) {
    // Albums - Can Reorder Stock Albums
    return 1;
}

static bool _patched_ftt_meth_$PXPhotoKitCollectionsDataSourceManager$containsAnyAssets$(id self, SEL _cmd, id arg1) {
    // Albums - Hide Thumbnails: {YES=F, NO=T}
    return 1;
}

static bool _patched_ftt_meth_$PUAlbumListViewController$showPeople(id self, SEL _cmd) {
    // Hide Albums - "People": {HIDE=F}
    return 0;
}

static bool _patched_ftt_meth_$PHFetchOptions$includePlacesSmartAlbum(id self, SEL _cmd) {
    // Hide Albums - "Places": {HIDE=F}
    return 0;
}

static bool _patched_ftt_meth_$PXPhotoKitCollectionsDataSourceManager$_containsAnyAssets$(id self, SEL _cmd, id arg1) {
    // Hide Albums - Stock Albums (i.e. "Videos", "Selfies", "Screenshots" etc): {SHOW=P, SHOW ALL=T, HIDE=F}
    return 0;
}

static bool _patched_ftt_meth_$PUOneUpSettings$allowParallax(id self, SEL _cmd) {
    // Photo Browser - Disable Parallax (Stop Image Edge Cutoff On Zoom): {YES=F, NO=T}
    return 0;
}

static void (*_orig_ftt_meth_$PUOneUpSettings$setInterpageSpacing$)(id, SEL, double);
static void _patched_ftt_meth_$PUOneUpSettings$setInterpageSpacing$(id self, SEL _cmd, double arg1) {
    // Photo Browser - Scrolling Interpage Spacing: {NO SPACE=0 etc.}
    arg1 = 5;
    _orig_ftt_meth_$PUOneUpSettings$setInterpageSpacing$(self, _cmd, arg1);
}

static double _patched_ftt_meth_$PUOneUpSettings$maximumInitialZoomToFillScaleForCompactSizeClass(id self, SEL _cmd) {
    // Photo Browser - Disable Auto Zoom (Full Photos): {YES=0, NO=P}
    return 0;
}

static void (*_orig_ftt_meth_$PUOneUpSettings$setDefaultMaximumZoomFactor$)(id, SEL, double);
static void _patched_ftt_meth_$PUOneUpSettings$setDefaultMaximumZoomFactor$(id self, SEL _cmd, double arg1) {
    // Photo Browser - Increase Maximum Zoom: {STOCK=3}
    arg1 = 500;
    _orig_ftt_meth_$PUOneUpSettings$setDefaultMaximumZoomFactor$(self, _cmd, arg1);
}

static bool _patched_ftt_meth_$PUPhotoEditViewController$_shouldDisplayRedEyeTool(id self, SEL _cmd) {
    // Enable Red Eye Remover Editing
    return 1;
}

static bool _patched_ftt_meth_$PUDeletePhotosActionController$shouldSkipDeleteConfirmation(id self, SEL _cmd) {
    // Skip Photo Delete Confirmation
    return 1;
}

static bool _patched_ftt_meth_$PXMemoriesRelatedSettings$enableUI(id self, SEL _cmd) {
    // Hide Tab - "Memories": {YES=F, NO=P}
    return 0;
}

static id _patched_ftt_meth_$PUTabbedLibraryViewControllerPhoneSpec$createSharedAlbumListViewController(id self, SEL _cmd) {
    // Hide Tab - "Shared" (iPhones): {YES=N, NO=P}
    return NULL;
}

static id _patched_ftt_meth_$PUTabbedLibraryViewControllerPadSpec$createSharedAlbumListViewController(id self, SEL _cmd) {
    // Hide Tab - "Shared" (iPads): {YES=N, NO=P}
    return NULL;
}

static void (*_orig_ftt_meth_$PUTabbedLibraryViewController$setSelectedContentMode$)(id, SEL, int);
static void _patched_ftt_meth_$PUTabbedLibraryViewController$setSelectedContentMode$(id self, SEL _cmd, int arg1) {
    // Tab Bar - Selected Tab On Open: {STOCK=D, "Photos"=0, "Albums"=2 etc}
    arg1 = 2;
    _orig_ftt_meth_$PUTabbedLibraryViewController$setSelectedContentMode$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$UITabBarButton$setEnabled$)(id, SEL, bool);
static void _patched_ftt_meth_$UITabBarButton$setEnabled$(id self, SEL _cmd, bool arg1) {
    // Tab Bar - Lock Tabs: {YES=F, NO=T}
    arg1 = 1;
    _orig_ftt_meth_$UITabBarButton$setEnabled$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_PUPhotosGridViewController = objc_getClass("PUPhotosGridViewController");
    MSHookMessageEx(_ftt_class_PUPhotosGridViewController, @selector(allowSelectAllButton), (IMP)_patched_ftt_meth_$PUPhotosGridViewController$allowSelectAllButton, NULL);
    Class _ftt_class_PUPhotosAlbumViewController = objc_getClass("PUPhotosAlbumViewController");
    MSHookMessageEx(_ftt_class_PUPhotosAlbumViewController, @selector(allowSelectAllButton), (IMP)_patched_ftt_meth_$PUPhotosAlbumViewController$allowSelectAllButton, NULL);
    Class _ftt_class_PUAlbumListViewController = objc_getClass("PUAlbumListViewController");
    MSHookMessageEx(_ftt_class_PUAlbumListViewController, @selector(disallowsSearch), (IMP)_patched_ftt_meth_$PUAlbumListViewController$disallowsSearch, NULL);
    MSHookMessageEx(_ftt_class_PUAlbumListViewController, @selector(navigateToCollection:animated:completion:), (IMP)_patched_ftt_meth_$PUAlbumListViewController$navigateToCollection$animated$completion$, (IMP *)_orig_ftt_meth_$PUAlbumListViewController$navigateToCollection$animated$completion$);
    Class _ftt_class_PXPhotoKitCollectionsDataSourceManager = objc_getClass("PXPhotoKitCollectionsDataSourceManager");
    MSHookMessageEx(_ftt_class_PXPhotoKitCollectionsDataSourceManager, @selector(canReorderCollection:), (IMP)_patched_ftt_meth_$PXPhotoKitCollectionsDataSourceManager$canReorderCollection$, NULL);
    MSHookMessageEx(_ftt_class_PXPhotoKitCollectionsDataSourceManager, @selector(containsAnyAssets:), (IMP)_patched_ftt_meth_$PXPhotoKitCollectionsDataSourceManager$containsAnyAssets$, NULL);
    MSHookMessageEx(_ftt_class_PUAlbumListViewController, @selector(showPeople), (IMP)_patched_ftt_meth_$PUAlbumListViewController$showPeople, NULL);
    Class _ftt_class_PHFetchOptions = objc_getClass("PHFetchOptions");
    MSHookMessageEx(_ftt_class_PHFetchOptions, @selector(includePlacesSmartAlbum), (IMP)_patched_ftt_meth_$PHFetchOptions$includePlacesSmartAlbum, NULL);
    MSHookMessageEx(_ftt_class_PXPhotoKitCollectionsDataSourceManager, @selector(_containsAnyAssets:), (IMP)_patched_ftt_meth_$PXPhotoKitCollectionsDataSourceManager$_containsAnyAssets$, NULL);
    Class _ftt_class_PUOneUpSettings = objc_getClass("PUOneUpSettings");
    MSHookMessageEx(_ftt_class_PUOneUpSettings, @selector(allowParallax), (IMP)_patched_ftt_meth_$PUOneUpSettings$allowParallax, NULL);
    MSHookMessageEx(_ftt_class_PUOneUpSettings, @selector(setInterpageSpacing:), (IMP)_patched_ftt_meth_$PUOneUpSettings$setInterpageSpacing$, (IMP *)_orig_ftt_meth_$PUOneUpSettings$setInterpageSpacing$);
    MSHookMessageEx(_ftt_class_PUOneUpSettings, @selector(maximumInitialZoomToFillScaleForCompactSizeClass), (IMP)_patched_ftt_meth_$PUOneUpSettings$maximumInitialZoomToFillScaleForCompactSizeClass, NULL);
    MSHookMessageEx(_ftt_class_PUOneUpSettings, @selector(setDefaultMaximumZoomFactor:), (IMP)_patched_ftt_meth_$PUOneUpSettings$setDefaultMaximumZoomFactor$, (IMP *)_orig_ftt_meth_$PUOneUpSettings$setDefaultMaximumZoomFactor$);
    Class _ftt_class_PUPhotoEditViewController = objc_getClass("PUPhotoEditViewController");
    MSHookMessageEx(_ftt_class_PUPhotoEditViewController, @selector(_shouldDisplayRedEyeTool), (IMP)_patched_ftt_meth_$PUPhotoEditViewController$_shouldDisplayRedEyeTool, NULL);
    Class _ftt_class_PUDeletePhotosActionController = objc_getClass("PUDeletePhotosActionController");
    MSHookMessageEx(_ftt_class_PUDeletePhotosActionController, @selector(shouldSkipDeleteConfirmation), (IMP)_patched_ftt_meth_$PUDeletePhotosActionController$shouldSkipDeleteConfirmation, NULL);
    Class _ftt_class_PXMemoriesRelatedSettings = objc_getClass("PXMemoriesRelatedSettings");
    MSHookMessageEx(_ftt_class_PXMemoriesRelatedSettings, @selector(enableUI), (IMP)_patched_ftt_meth_$PXMemoriesRelatedSettings$enableUI, NULL);
    Class _ftt_class_PUTabbedLibraryViewControllerPhoneSpec = objc_getClass("PUTabbedLibraryViewControllerPhoneSpec");
    MSHookMessageEx(_ftt_class_PUTabbedLibraryViewControllerPhoneSpec, @selector(createSharedAlbumListViewController), (IMP)_patched_ftt_meth_$PUTabbedLibraryViewControllerPhoneSpec$createSharedAlbumListViewController, NULL);
    Class _ftt_class_PUTabbedLibraryViewControllerPadSpec = objc_getClass("PUTabbedLibraryViewControllerPadSpec");
    MSHookMessageEx(_ftt_class_PUTabbedLibraryViewControllerPadSpec, @selector(createSharedAlbumListViewController), (IMP)_patched_ftt_meth_$PUTabbedLibraryViewControllerPadSpec$createSharedAlbumListViewController, NULL);
    Class _ftt_class_PUTabbedLibraryViewController = objc_getClass("PUTabbedLibraryViewController");
    MSHookMessageEx(_ftt_class_PUTabbedLibraryViewController, @selector(setSelectedContentMode:), (IMP)_patched_ftt_meth_$PUTabbedLibraryViewController$setSelectedContentMode$, (IMP *)_orig_ftt_meth_$PUTabbedLibraryViewController$setSelectedContentMode$);
    Class _ftt_class_UITabBarButton = objc_getClass("UITabBarButton");
    MSHookMessageEx(_ftt_class_UITabBarButton, @selector(setEnabled:), (IMP)_patched_ftt_meth_$UITabBarButton$setEnabled$, (IMP *)_orig_ftt_meth_$UITabBarButton$setEnabled$);
}
