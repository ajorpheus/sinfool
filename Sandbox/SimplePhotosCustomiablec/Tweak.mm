#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$PUPhotosGridViewController$allowSelectAllButton(id self, SEL _cmd) {
    // Enable Select All Button (Moments)
    return 1;
}

static bool _patched_ftt_meth_$PUPhotosAlbumViewController$allowSelectAllButton(id self, SEL _cmd) {
    // Enable Select All Button (Camera Roll)
    return 1;
}

static bool _patched_ftt_meth_$PUAlbumListViewController$disallowsSearch(id self, SEL _cmd) {
    // Disable Search
    return 1;
}

static bool _patched_ftt_meth_$PUAlbumListViewController$canReorderCollection$(id self, SEL _cmd, id arg1) {
    // Reorder Stock Albums
    return 1;
}

static bool _patched_ftt_meth_$PUAlbumListViewController$_containsAnyAssets$(id self, SEL _cmd, id arg1) {
    // Hide Stock Albums: {YES=F, NO=P}
    return 0;
}

static void (*_orig_ftt_meth_$PUAlbumListViewController$_getDisplayableAssets$indexes$forCollection$maximumCount$useCache$)(id, SEL, id*, id*, id, long long, bool);
static void _patched_ftt_meth_$PUAlbumListViewController$_getDisplayableAssets$indexes$forCollection$maximumCount$useCache$(id self, SEL _cmd, id* arg1, id* arg2, id arg3, long long arg4, bool arg5) {
    // Hide Album Thumbnails (with Generic Icon): {(Arg#5): YES=P, NO=T}
    arg5 = 1;
    _orig_ftt_meth_$PUAlbumListViewController$_getDisplayableAssets$indexes$forCollection$maximumCount$useCache$(self, _cmd, arg1, arg2, arg3, arg4, arg5);
}

static id _patched_ftt_meth_$PUAlbumListCellContentView$subtitle(id self, SEL _cmd) {
    // Hide Album Photo Counts: {YES=N, NO=P}
    return NULL;
}

static id _patched_ftt_meth_$UITableViewCell$_disclosureChevronImage$(id self, SEL _cmd, bool arg1) {
    // Hide Album List ">" Chevron: {YES=N, NO=P}
    return NULL;
}

static void (*_orig_ftt_meth_$PUAlbumListViewController$navigateToCollection$animated$completion$)(id, SEL, id, bool, id);
static void _patched_ftt_meth_$PUAlbumListViewController$navigateToCollection$animated$completion$(id self, SEL _cmd, id arg1, bool arg2, id arg3) {
    // Disable Album Open Animation: {(Arg#2): YES=F, NO=P}
    arg2 = 0;
    _orig_ftt_meth_$PUAlbumListViewController$navigateToCollection$animated$completion$(self, _cmd, arg1, arg2, arg3);
}

static bool _patched_ftt_meth_$PUOneUpSettings$allowParallax(id self, SEL _cmd) {
    // Disable Parallax (Stop Image Edge Cutoff On Zoom): {YES=F, NO=T}
    return 0;
}

static void (*_orig_ftt_meth_$PUOneUpSettings$setInterpageSpacing$)(id, SEL, double);
static void _patched_ftt_meth_$PUOneUpSettings$setInterpageSpacing$(id self, SEL _cmd, double arg1) {
    // Scrolling Interpage Spacing: {NO SPACE=0, STOCK=P etc.}
    arg1 = 5;
    _orig_ftt_meth_$PUOneUpSettings$setInterpageSpacing$(self, _cmd, arg1);
}

static float _patched_ftt_meth_$PUOneUpTilingLayout$tileContentMaximumInitialZoomToFillScale(id self, SEL _cmd) {
    // Disable Auto Zoom (Full Photos) [iOS 9.x]: {YES=0, NO=P}
    return 0;
}

static double _patched_ftt_meth_$PUOneUpSettings$maximumInitialZoomToFillScaleForCompactSizeClass(id self, SEL _cmd) {
    // Disable Auto Zoom (Full Photos): {YES=0, NO=P}
    return 0;
}

static void (*_orig_ftt_meth_$PUOneUpSettings$setDefaultMaximumZoomFactor$)(id, SEL, double);
static void _patched_ftt_meth_$PUOneUpSettings$setDefaultMaximumZoomFactor$(id self, SEL _cmd, double arg1) {
    // Increase Maximum Zoom: {STOCK=3}
    arg1 = 500;
    _orig_ftt_meth_$PUOneUpSettings$setDefaultMaximumZoomFactor$(self, _cmd, arg1);
}

static bool _patched_ftt_meth_$PUPhotoBrowserTitleView$_isSecondaryLabelVisible(id self, SEL _cmd) {
    // Use Browser Day (Only) Descriptions [#1]: {YES=F, NO=P}
    return 0;
}

static id _patched_ftt_meth_$PUPhotoBrowserTitleView$_secondaryLabel(id self, SEL _cmd) {
    // Use Browser Day (Only) Descriptions [#2]: {YES=N, NO=P}
    return NULL;
}

static bool _patched_ftt_meth_$PUPhotoEditViewController$_shouldDisplayRedEyeTool(id self, SEL _cmd) {
    // Enable Red Eye Remover Editing
    return 1;
}

static bool _patched_ftt_meth_$PUDeletePhotosActionController$shouldSkipDeleteConfirmation(id self, SEL _cmd) {
    // Skip Photo Delete Confirmation
    return 1;
}

static bool _patched_ftt_meth_$PUPhotosGridViewController$alwaysHideTabBar(id self, SEL _cmd) {
    // Hide Photo Grid Tab Bar Area: {DISABLE IF USING MULTIPLE TABS}
    return 1;
}

static id _patched_ftt_meth_$PUTabbedLibraryViewControllerPhoneSpec$createSharedAlbumListViewController(id self, SEL _cmd) {
    // Hide "Shared" Tab/Content (iPhone): {YES=N, NO=P}
    return NULL;
}

static id _patched_ftt_meth_$PUTabbedLibraryViewControllerPadSpec$createSharedAlbumListViewController(id self, SEL _cmd) {
    // Hide "Shared" Tab/Content (iPads): {YES=N, NO=P}
    return NULL;
}

static id _patched_ftt_meth_$UITabBarButton$initWithImage$selectedImage$label$withInsets$(id self, SEL _cmd, id arg1, id arg2, id arg3, UIEdgeInsets arg4) {
    // Hide Tab Bar Icons: {(Return Value): YES=N, NO=P}
    return NULL;
}

static bool _patched_ftt_meth_$UITabBar$_backgroundNeedsUpdate(id self, SEL _cmd) {
    // Hide Tab Bar Background [#1]: {YES=F, NO=T}
    return 0;
}

static bool _patched_ftt_meth_$UITabBar$_wantsAdaptiveBackdrop(id self, SEL _cmd) {
    // Hide Tab Bar Background [#2]: {YES=F, NO=T}
    return 0;
}

static void (*_orig_ftt_meth_$PUTabbedLibraryViewController$setSelectedContentMode$)(id, SEL, int);
static void _patched_ftt_meth_$PUTabbedLibraryViewController$setSelectedContentMode$(id self, SEL _cmd, int arg1) {
    // Selected Tab: {STOCK=P, "Photos"=1, "Albums"=2 etc}
    arg1 = 2;
    _orig_ftt_meth_$PUTabbedLibraryViewController$setSelectedContentMode$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_PUPhotosGridViewController = objc_getClass("PUPhotosGridViewController");
    MSHookMessageEx(_ftt_class_PUPhotosGridViewController, @selector(allowSelectAllButton), (IMP)_patched_ftt_meth_$PUPhotosGridViewController$allowSelectAllButton, NULL);
    Class _ftt_class_PUPhotosAlbumViewController = objc_getClass("PUPhotosAlbumViewController");
    MSHookMessageEx(_ftt_class_PUPhotosAlbumViewController, @selector(allowSelectAllButton), (IMP)_patched_ftt_meth_$PUPhotosAlbumViewController$allowSelectAllButton, NULL);
    Class _ftt_class_PUAlbumListViewController = objc_getClass("PUAlbumListViewController");
    MSHookMessageEx(_ftt_class_PUAlbumListViewController, @selector(disallowsSearch), (IMP)_patched_ftt_meth_$PUAlbumListViewController$disallowsSearch, NULL);
    MSHookMessageEx(_ftt_class_PUAlbumListViewController, @selector(canReorderCollection:), (IMP)_patched_ftt_meth_$PUAlbumListViewController$canReorderCollection$, NULL);
    MSHookMessageEx(_ftt_class_PUAlbumListViewController, @selector(_containsAnyAssets:), (IMP)_patched_ftt_meth_$PUAlbumListViewController$_containsAnyAssets$, NULL);
    MSHookMessageEx(_ftt_class_PUAlbumListViewController, @selector(_getDisplayableAssets:indexes:forCollection:maximumCount:useCache:), (IMP)_patched_ftt_meth_$PUAlbumListViewController$_getDisplayableAssets$indexes$forCollection$maximumCount$useCache$, (IMP *)_orig_ftt_meth_$PUAlbumListViewController$_getDisplayableAssets$indexes$forCollection$maximumCount$useCache$);
    Class _ftt_class_PUAlbumListCellContentView = objc_getClass("PUAlbumListCellContentView");
    MSHookMessageEx(_ftt_class_PUAlbumListCellContentView, @selector(subtitle), (IMP)_patched_ftt_meth_$PUAlbumListCellContentView$subtitle, NULL);
    Class _ftt_class_UITableViewCell = objc_getClass("UITableViewCell");
    MSHookMessageEx(_ftt_class_UITableViewCell, @selector(_disclosureChevronImage:), (IMP)_patched_ftt_meth_$UITableViewCell$_disclosureChevronImage$, NULL);
    MSHookMessageEx(_ftt_class_PUAlbumListViewController, @selector(navigateToCollection:animated:completion:), (IMP)_patched_ftt_meth_$PUAlbumListViewController$navigateToCollection$animated$completion$, (IMP *)_orig_ftt_meth_$PUAlbumListViewController$navigateToCollection$animated$completion$);
    Class _ftt_class_PUOneUpSettings = objc_getClass("PUOneUpSettings");
    MSHookMessageEx(_ftt_class_PUOneUpSettings, @selector(allowParallax), (IMP)_patched_ftt_meth_$PUOneUpSettings$allowParallax, NULL);
    MSHookMessageEx(_ftt_class_PUOneUpSettings, @selector(setInterpageSpacing:), (IMP)_patched_ftt_meth_$PUOneUpSettings$setInterpageSpacing$, (IMP *)_orig_ftt_meth_$PUOneUpSettings$setInterpageSpacing$);
    Class _ftt_class_PUOneUpTilingLayout = objc_getClass("PUOneUpTilingLayout");
    MSHookMessageEx(_ftt_class_PUOneUpTilingLayout, @selector(tileContentMaximumInitialZoomToFillScale), (IMP)_patched_ftt_meth_$PUOneUpTilingLayout$tileContentMaximumInitialZoomToFillScale, NULL);
    MSHookMessageEx(_ftt_class_PUOneUpSettings, @selector(maximumInitialZoomToFillScaleForCompactSizeClass), (IMP)_patched_ftt_meth_$PUOneUpSettings$maximumInitialZoomToFillScaleForCompactSizeClass, NULL);
    MSHookMessageEx(_ftt_class_PUOneUpSettings, @selector(setDefaultMaximumZoomFactor:), (IMP)_patched_ftt_meth_$PUOneUpSettings$setDefaultMaximumZoomFactor$, (IMP *)_orig_ftt_meth_$PUOneUpSettings$setDefaultMaximumZoomFactor$);
    Class _ftt_class_PUPhotoBrowserTitleView = objc_getClass("PUPhotoBrowserTitleView");
    MSHookMessageEx(_ftt_class_PUPhotoBrowserTitleView, @selector(_isSecondaryLabelVisible), (IMP)_patched_ftt_meth_$PUPhotoBrowserTitleView$_isSecondaryLabelVisible, NULL);
    MSHookMessageEx(_ftt_class_PUPhotoBrowserTitleView, @selector(_secondaryLabel), (IMP)_patched_ftt_meth_$PUPhotoBrowserTitleView$_secondaryLabel, NULL);
    Class _ftt_class_PUPhotoEditViewController = objc_getClass("PUPhotoEditViewController");
    MSHookMessageEx(_ftt_class_PUPhotoEditViewController, @selector(_shouldDisplayRedEyeTool), (IMP)_patched_ftt_meth_$PUPhotoEditViewController$_shouldDisplayRedEyeTool, NULL);
    Class _ftt_class_PUDeletePhotosActionController = objc_getClass("PUDeletePhotosActionController");
    MSHookMessageEx(_ftt_class_PUDeletePhotosActionController, @selector(shouldSkipDeleteConfirmation), (IMP)_patched_ftt_meth_$PUDeletePhotosActionController$shouldSkipDeleteConfirmation, NULL);
    MSHookMessageEx(_ftt_class_PUPhotosGridViewController, @selector(alwaysHideTabBar), (IMP)_patched_ftt_meth_$PUPhotosGridViewController$alwaysHideTabBar, NULL);
    Class _ftt_class_PUTabbedLibraryViewControllerPhoneSpec = objc_getClass("PUTabbedLibraryViewControllerPhoneSpec");
    MSHookMessageEx(_ftt_class_PUTabbedLibraryViewControllerPhoneSpec, @selector(createSharedAlbumListViewController), (IMP)_patched_ftt_meth_$PUTabbedLibraryViewControllerPhoneSpec$createSharedAlbumListViewController, NULL);
    Class _ftt_class_PUTabbedLibraryViewControllerPadSpec = objc_getClass("PUTabbedLibraryViewControllerPadSpec");
    MSHookMessageEx(_ftt_class_PUTabbedLibraryViewControllerPadSpec, @selector(createSharedAlbumListViewController), (IMP)_patched_ftt_meth_$PUTabbedLibraryViewControllerPadSpec$createSharedAlbumListViewController, NULL);
    Class _ftt_class_UITabBarButton = objc_getClass("UITabBarButton");
    MSHookMessageEx(_ftt_class_UITabBarButton, @selector(initWithImage:selectedImage:label:withInsets:), (IMP)_patched_ftt_meth_$UITabBarButton$initWithImage$selectedImage$label$withInsets$, NULL);
    Class _ftt_class_UITabBar = objc_getClass("UITabBar");
    MSHookMessageEx(_ftt_class_UITabBar, @selector(_backgroundNeedsUpdate), (IMP)_patched_ftt_meth_$UITabBar$_backgroundNeedsUpdate, NULL);
    MSHookMessageEx(_ftt_class_UITabBar, @selector(_wantsAdaptiveBackdrop), (IMP)_patched_ftt_meth_$UITabBar$_wantsAdaptiveBackdrop, NULL);
    Class _ftt_class_PUTabbedLibraryViewController = objc_getClass("PUTabbedLibraryViewController");
    MSHookMessageEx(_ftt_class_PUTabbedLibraryViewController, @selector(setSelectedContentMode:), (IMP)_patched_ftt_meth_$PUTabbedLibraryViewController$setSelectedContentMode$, (IMP *)_orig_ftt_meth_$PUTabbedLibraryViewController$setSelectedContentMode$);
}
