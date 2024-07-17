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

@class PUAlbumListViewController; @class PUOneUpSettings; @class PUTabbedLibraryViewController; @class PUDeletePhotosActionController; @class PHFetchOptions; @class PUTabbedLibraryViewControllerPhoneSpec; @class PUPhotosGridViewController; @class PUTabbedLibraryViewControllerPadSpec; @class UITabBarButton; @class PUPhotoEditViewController; @class PXMemoriesRelatedSettings; @class PXPhotoKitCollectionsDataSourceManager; @class PUPhotosAlbumViewController; 
static bool (*_logos_orig$_ungrouped$PUPhotosGridViewController$allowSelectAllButton)(_LOGOS_SELF_TYPE_NORMAL PUPhotosGridViewController* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$PUPhotosGridViewController$allowSelectAllButton(_LOGOS_SELF_TYPE_NORMAL PUPhotosGridViewController* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$PUPhotosAlbumViewController$allowSelectAllButton)(_LOGOS_SELF_TYPE_NORMAL PUPhotosAlbumViewController* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$PUPhotosAlbumViewController$allowSelectAllButton(_LOGOS_SELF_TYPE_NORMAL PUPhotosAlbumViewController* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$PUAlbumListViewController$disallowsSearch)(_LOGOS_SELF_TYPE_NORMAL PUAlbumListViewController* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$PUAlbumListViewController$disallowsSearch(_LOGOS_SELF_TYPE_NORMAL PUAlbumListViewController* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$PUAlbumListViewController$navigateToCollection$animated$completion$)(_LOGOS_SELF_TYPE_NORMAL PUAlbumListViewController* _LOGOS_SELF_CONST, SEL, id, bool, id); static void _logos_method$_ungrouped$PUAlbumListViewController$navigateToCollection$animated$completion$(_LOGOS_SELF_TYPE_NORMAL PUAlbumListViewController* _LOGOS_SELF_CONST, SEL, id, bool, id); static bool (*_logos_orig$_ungrouped$PUAlbumListViewController$showPeople)(_LOGOS_SELF_TYPE_NORMAL PUAlbumListViewController* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$PUAlbumListViewController$showPeople(_LOGOS_SELF_TYPE_NORMAL PUAlbumListViewController* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$PXPhotoKitCollectionsDataSourceManager$canReorderCollection$)(_LOGOS_SELF_TYPE_NORMAL PXPhotoKitCollectionsDataSourceManager* _LOGOS_SELF_CONST, SEL, id); static bool _logos_method$_ungrouped$PXPhotoKitCollectionsDataSourceManager$canReorderCollection$(_LOGOS_SELF_TYPE_NORMAL PXPhotoKitCollectionsDataSourceManager* _LOGOS_SELF_CONST, SEL, id); static bool (*_logos_orig$_ungrouped$PXPhotoKitCollectionsDataSourceManager$containsAnyAssets$)(_LOGOS_SELF_TYPE_NORMAL PXPhotoKitCollectionsDataSourceManager* _LOGOS_SELF_CONST, SEL, id); static bool _logos_method$_ungrouped$PXPhotoKitCollectionsDataSourceManager$containsAnyAssets$(_LOGOS_SELF_TYPE_NORMAL PXPhotoKitCollectionsDataSourceManager* _LOGOS_SELF_CONST, SEL, id); static bool (*_logos_orig$_ungrouped$PXPhotoKitCollectionsDataSourceManager$_containsAnyAssets$)(_LOGOS_SELF_TYPE_NORMAL PXPhotoKitCollectionsDataSourceManager* _LOGOS_SELF_CONST, SEL, id); static bool _logos_method$_ungrouped$PXPhotoKitCollectionsDataSourceManager$_containsAnyAssets$(_LOGOS_SELF_TYPE_NORMAL PXPhotoKitCollectionsDataSourceManager* _LOGOS_SELF_CONST, SEL, id); static bool (*_logos_orig$_ungrouped$PHFetchOptions$includePlacesSmartAlbum)(_LOGOS_SELF_TYPE_NORMAL PHFetchOptions* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$PHFetchOptions$includePlacesSmartAlbum(_LOGOS_SELF_TYPE_NORMAL PHFetchOptions* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$PUOneUpSettings$allowParallax)(_LOGOS_SELF_TYPE_NORMAL PUOneUpSettings* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$PUOneUpSettings$allowParallax(_LOGOS_SELF_TYPE_NORMAL PUOneUpSettings* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$PUOneUpSettings$setInterpageSpacing$)(_LOGOS_SELF_TYPE_NORMAL PUOneUpSettings* _LOGOS_SELF_CONST, SEL, double); static void _logos_method$_ungrouped$PUOneUpSettings$setInterpageSpacing$(_LOGOS_SELF_TYPE_NORMAL PUOneUpSettings* _LOGOS_SELF_CONST, SEL, double); static double (*_logos_orig$_ungrouped$PUOneUpSettings$maximumInitialZoomToFillScaleForCompactSizeClass)(_LOGOS_SELF_TYPE_NORMAL PUOneUpSettings* _LOGOS_SELF_CONST, SEL); static double _logos_method$_ungrouped$PUOneUpSettings$maximumInitialZoomToFillScaleForCompactSizeClass(_LOGOS_SELF_TYPE_NORMAL PUOneUpSettings* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$PUOneUpSettings$setDefaultMaximumZoomFactor$)(_LOGOS_SELF_TYPE_NORMAL PUOneUpSettings* _LOGOS_SELF_CONST, SEL, double); static void _logos_method$_ungrouped$PUOneUpSettings$setDefaultMaximumZoomFactor$(_LOGOS_SELF_TYPE_NORMAL PUOneUpSettings* _LOGOS_SELF_CONST, SEL, double); static bool (*_logos_orig$_ungrouped$PUPhotoEditViewController$_shouldDisplayRedEyeTool)(_LOGOS_SELF_TYPE_NORMAL PUPhotoEditViewController* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$PUPhotoEditViewController$_shouldDisplayRedEyeTool(_LOGOS_SELF_TYPE_NORMAL PUPhotoEditViewController* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$PUDeletePhotosActionController$shouldSkipDeleteConfirmation)(_LOGOS_SELF_TYPE_NORMAL PUDeletePhotosActionController* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$PUDeletePhotosActionController$shouldSkipDeleteConfirmation(_LOGOS_SELF_TYPE_NORMAL PUDeletePhotosActionController* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$PXMemoriesRelatedSettings$enableUI)(_LOGOS_SELF_TYPE_NORMAL PXMemoriesRelatedSettings* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$PXMemoriesRelatedSettings$enableUI(_LOGOS_SELF_TYPE_NORMAL PXMemoriesRelatedSettings* _LOGOS_SELF_CONST, SEL); static id (*_logos_orig$_ungrouped$PUTabbedLibraryViewControllerPhoneSpec$createSharedAlbumListViewController)(_LOGOS_SELF_TYPE_NORMAL PUTabbedLibraryViewControllerPhoneSpec* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$PUTabbedLibraryViewControllerPhoneSpec$createSharedAlbumListViewController(_LOGOS_SELF_TYPE_NORMAL PUTabbedLibraryViewControllerPhoneSpec* _LOGOS_SELF_CONST, SEL); static id (*_logos_orig$_ungrouped$PUTabbedLibraryViewControllerPadSpec$createSharedAlbumListViewController)(_LOGOS_SELF_TYPE_NORMAL PUTabbedLibraryViewControllerPadSpec* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$PUTabbedLibraryViewControllerPadSpec$createSharedAlbumListViewController(_LOGOS_SELF_TYPE_NORMAL PUTabbedLibraryViewControllerPadSpec* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$PUTabbedLibraryViewController$setSelectedContentMode$)(_LOGOS_SELF_TYPE_NORMAL PUTabbedLibraryViewController* _LOGOS_SELF_CONST, SEL, int); static void _logos_method$_ungrouped$PUTabbedLibraryViewController$setSelectedContentMode$(_LOGOS_SELF_TYPE_NORMAL PUTabbedLibraryViewController* _LOGOS_SELF_CONST, SEL, int); static void (*_logos_orig$_ungrouped$UITabBarButton$setEnabled$)(_LOGOS_SELF_TYPE_NORMAL UITabBarButton* _LOGOS_SELF_CONST, SEL, bool); static void _logos_method$_ungrouped$UITabBarButton$setEnabled$(_LOGOS_SELF_TYPE_NORMAL UITabBarButton* _LOGOS_SELF_CONST, SEL, bool); 

#line 3 "Tweak.xm"

static bool _logos_method$_ungrouped$PUPhotosGridViewController$allowSelectAllButton(_LOGOS_SELF_TYPE_NORMAL PUPhotosGridViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 1;
}



static bool _logos_method$_ungrouped$PUPhotosAlbumViewController$allowSelectAllButton(_LOGOS_SELF_TYPE_NORMAL PUPhotosAlbumViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 1;
}



static bool _logos_method$_ungrouped$PUAlbumListViewController$disallowsSearch(_LOGOS_SELF_TYPE_NORMAL PUAlbumListViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 1;
}



static void _logos_method$_ungrouped$PUAlbumListViewController$navigateToCollection$animated$completion$(_LOGOS_SELF_TYPE_NORMAL PUAlbumListViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, bool arg2, id arg3) {
    
    arg2 = 0;
    _logos_orig$_ungrouped$PUAlbumListViewController$navigateToCollection$animated$completion$(self, _cmd, arg1, arg2, arg3);
}



static bool _logos_method$_ungrouped$PXPhotoKitCollectionsDataSourceManager$canReorderCollection$(_LOGOS_SELF_TYPE_NORMAL PXPhotoKitCollectionsDataSourceManager* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    return 1;
}



static bool _logos_method$_ungrouped$PXPhotoKitCollectionsDataSourceManager$containsAnyAssets$(_LOGOS_SELF_TYPE_NORMAL PXPhotoKitCollectionsDataSourceManager* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    return 1;
}



static bool _logos_method$_ungrouped$PUAlbumListViewController$showPeople(_LOGOS_SELF_TYPE_NORMAL PUAlbumListViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 0;
}



static bool _logos_method$_ungrouped$PHFetchOptions$includePlacesSmartAlbum(_LOGOS_SELF_TYPE_NORMAL PHFetchOptions* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 0;
}



static bool _logos_method$_ungrouped$PXPhotoKitCollectionsDataSourceManager$_containsAnyAssets$(_LOGOS_SELF_TYPE_NORMAL PXPhotoKitCollectionsDataSourceManager* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    return 0;
}



static bool _logos_method$_ungrouped$PUOneUpSettings$allowParallax(_LOGOS_SELF_TYPE_NORMAL PUOneUpSettings* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 0;
}



static void _logos_method$_ungrouped$PUOneUpSettings$setInterpageSpacing$(_LOGOS_SELF_TYPE_NORMAL PUOneUpSettings* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, double arg1) {
    
    arg1 = 5;
    _logos_orig$_ungrouped$PUOneUpSettings$setInterpageSpacing$(self, _cmd, arg1);
}



static double _logos_method$_ungrouped$PUOneUpSettings$maximumInitialZoomToFillScaleForCompactSizeClass(_LOGOS_SELF_TYPE_NORMAL PUOneUpSettings* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 0;
}



static void _logos_method$_ungrouped$PUOneUpSettings$setDefaultMaximumZoomFactor$(_LOGOS_SELF_TYPE_NORMAL PUOneUpSettings* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, double arg1) {
    
    arg1 = 500;
    _logos_orig$_ungrouped$PUOneUpSettings$setDefaultMaximumZoomFactor$(self, _cmd, arg1);
}



static bool _logos_method$_ungrouped$PUPhotoEditViewController$_shouldDisplayRedEyeTool(_LOGOS_SELF_TYPE_NORMAL PUPhotoEditViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 1;
}



static bool _logos_method$_ungrouped$PUDeletePhotosActionController$shouldSkipDeleteConfirmation(_LOGOS_SELF_TYPE_NORMAL PUDeletePhotosActionController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 1;
}



static bool _logos_method$_ungrouped$PXMemoriesRelatedSettings$enableUI(_LOGOS_SELF_TYPE_NORMAL PXMemoriesRelatedSettings* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 0;
}



static id _logos_method$_ungrouped$PUTabbedLibraryViewControllerPhoneSpec$createSharedAlbumListViewController(_LOGOS_SELF_TYPE_NORMAL PUTabbedLibraryViewControllerPhoneSpec* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return NULL;
}



static id _logos_method$_ungrouped$PUTabbedLibraryViewControllerPadSpec$createSharedAlbumListViewController(_LOGOS_SELF_TYPE_NORMAL PUTabbedLibraryViewControllerPadSpec* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return NULL;
}



static void _logos_method$_ungrouped$PUTabbedLibraryViewController$setSelectedContentMode$(_LOGOS_SELF_TYPE_NORMAL PUTabbedLibraryViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, int arg1) {
    
    arg1 = 2;
    _logos_orig$_ungrouped$PUTabbedLibraryViewController$setSelectedContentMode$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$UITabBarButton$setEnabled$(_LOGOS_SELF_TYPE_NORMAL UITabBarButton* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, bool arg1) {
    
    arg1 = 1;
    _logos_orig$_ungrouped$UITabBarButton$setEnabled$(self, _cmd, arg1);
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$PUPhotosGridViewController = objc_getClass("PUPhotosGridViewController"); { MSHookMessageEx(_logos_class$_ungrouped$PUPhotosGridViewController, @selector(allowSelectAllButton), (IMP)&_logos_method$_ungrouped$PUPhotosGridViewController$allowSelectAllButton, (IMP*)&_logos_orig$_ungrouped$PUPhotosGridViewController$allowSelectAllButton);}Class _logos_class$_ungrouped$PUPhotosAlbumViewController = objc_getClass("PUPhotosAlbumViewController"); { MSHookMessageEx(_logos_class$_ungrouped$PUPhotosAlbumViewController, @selector(allowSelectAllButton), (IMP)&_logos_method$_ungrouped$PUPhotosAlbumViewController$allowSelectAllButton, (IMP*)&_logos_orig$_ungrouped$PUPhotosAlbumViewController$allowSelectAllButton);}Class _logos_class$_ungrouped$PUAlbumListViewController = objc_getClass("PUAlbumListViewController"); { MSHookMessageEx(_logos_class$_ungrouped$PUAlbumListViewController, @selector(disallowsSearch), (IMP)&_logos_method$_ungrouped$PUAlbumListViewController$disallowsSearch, (IMP*)&_logos_orig$_ungrouped$PUAlbumListViewController$disallowsSearch);}{ MSHookMessageEx(_logos_class$_ungrouped$PUAlbumListViewController, @selector(navigateToCollection:animated:completion:), (IMP)&_logos_method$_ungrouped$PUAlbumListViewController$navigateToCollection$animated$completion$, (IMP*)&_logos_orig$_ungrouped$PUAlbumListViewController$navigateToCollection$animated$completion$);}{ MSHookMessageEx(_logos_class$_ungrouped$PUAlbumListViewController, @selector(showPeople), (IMP)&_logos_method$_ungrouped$PUAlbumListViewController$showPeople, (IMP*)&_logos_orig$_ungrouped$PUAlbumListViewController$showPeople);}Class _logos_class$_ungrouped$PXPhotoKitCollectionsDataSourceManager = objc_getClass("PXPhotoKitCollectionsDataSourceManager"); { MSHookMessageEx(_logos_class$_ungrouped$PXPhotoKitCollectionsDataSourceManager, @selector(canReorderCollection:), (IMP)&_logos_method$_ungrouped$PXPhotoKitCollectionsDataSourceManager$canReorderCollection$, (IMP*)&_logos_orig$_ungrouped$PXPhotoKitCollectionsDataSourceManager$canReorderCollection$);}{ MSHookMessageEx(_logos_class$_ungrouped$PXPhotoKitCollectionsDataSourceManager, @selector(containsAnyAssets:), (IMP)&_logos_method$_ungrouped$PXPhotoKitCollectionsDataSourceManager$containsAnyAssets$, (IMP*)&_logos_orig$_ungrouped$PXPhotoKitCollectionsDataSourceManager$containsAnyAssets$);}{ MSHookMessageEx(_logos_class$_ungrouped$PXPhotoKitCollectionsDataSourceManager, @selector(_containsAnyAssets:), (IMP)&_logos_method$_ungrouped$PXPhotoKitCollectionsDataSourceManager$_containsAnyAssets$, (IMP*)&_logos_orig$_ungrouped$PXPhotoKitCollectionsDataSourceManager$_containsAnyAssets$);}Class _logos_class$_ungrouped$PHFetchOptions = objc_getClass("PHFetchOptions"); { MSHookMessageEx(_logos_class$_ungrouped$PHFetchOptions, @selector(includePlacesSmartAlbum), (IMP)&_logos_method$_ungrouped$PHFetchOptions$includePlacesSmartAlbum, (IMP*)&_logos_orig$_ungrouped$PHFetchOptions$includePlacesSmartAlbum);}Class _logos_class$_ungrouped$PUOneUpSettings = objc_getClass("PUOneUpSettings"); { MSHookMessageEx(_logos_class$_ungrouped$PUOneUpSettings, @selector(allowParallax), (IMP)&_logos_method$_ungrouped$PUOneUpSettings$allowParallax, (IMP*)&_logos_orig$_ungrouped$PUOneUpSettings$allowParallax);}{ MSHookMessageEx(_logos_class$_ungrouped$PUOneUpSettings, @selector(setInterpageSpacing:), (IMP)&_logos_method$_ungrouped$PUOneUpSettings$setInterpageSpacing$, (IMP*)&_logos_orig$_ungrouped$PUOneUpSettings$setInterpageSpacing$);}{ MSHookMessageEx(_logos_class$_ungrouped$PUOneUpSettings, @selector(maximumInitialZoomToFillScaleForCompactSizeClass), (IMP)&_logos_method$_ungrouped$PUOneUpSettings$maximumInitialZoomToFillScaleForCompactSizeClass, (IMP*)&_logos_orig$_ungrouped$PUOneUpSettings$maximumInitialZoomToFillScaleForCompactSizeClass);}{ MSHookMessageEx(_logos_class$_ungrouped$PUOneUpSettings, @selector(setDefaultMaximumZoomFactor:), (IMP)&_logos_method$_ungrouped$PUOneUpSettings$setDefaultMaximumZoomFactor$, (IMP*)&_logos_orig$_ungrouped$PUOneUpSettings$setDefaultMaximumZoomFactor$);}Class _logos_class$_ungrouped$PUPhotoEditViewController = objc_getClass("PUPhotoEditViewController"); { MSHookMessageEx(_logos_class$_ungrouped$PUPhotoEditViewController, @selector(_shouldDisplayRedEyeTool), (IMP)&_logos_method$_ungrouped$PUPhotoEditViewController$_shouldDisplayRedEyeTool, (IMP*)&_logos_orig$_ungrouped$PUPhotoEditViewController$_shouldDisplayRedEyeTool);}Class _logos_class$_ungrouped$PUDeletePhotosActionController = objc_getClass("PUDeletePhotosActionController"); { MSHookMessageEx(_logos_class$_ungrouped$PUDeletePhotosActionController, @selector(shouldSkipDeleteConfirmation), (IMP)&_logos_method$_ungrouped$PUDeletePhotosActionController$shouldSkipDeleteConfirmation, (IMP*)&_logos_orig$_ungrouped$PUDeletePhotosActionController$shouldSkipDeleteConfirmation);}Class _logos_class$_ungrouped$PXMemoriesRelatedSettings = objc_getClass("PXMemoriesRelatedSettings"); { MSHookMessageEx(_logos_class$_ungrouped$PXMemoriesRelatedSettings, @selector(enableUI), (IMP)&_logos_method$_ungrouped$PXMemoriesRelatedSettings$enableUI, (IMP*)&_logos_orig$_ungrouped$PXMemoriesRelatedSettings$enableUI);}Class _logos_class$_ungrouped$PUTabbedLibraryViewControllerPhoneSpec = objc_getClass("PUTabbedLibraryViewControllerPhoneSpec"); { MSHookMessageEx(_logos_class$_ungrouped$PUTabbedLibraryViewControllerPhoneSpec, @selector(createSharedAlbumListViewController), (IMP)&_logos_method$_ungrouped$PUTabbedLibraryViewControllerPhoneSpec$createSharedAlbumListViewController, (IMP*)&_logos_orig$_ungrouped$PUTabbedLibraryViewControllerPhoneSpec$createSharedAlbumListViewController);}Class _logos_class$_ungrouped$PUTabbedLibraryViewControllerPadSpec = objc_getClass("PUTabbedLibraryViewControllerPadSpec"); { MSHookMessageEx(_logos_class$_ungrouped$PUTabbedLibraryViewControllerPadSpec, @selector(createSharedAlbumListViewController), (IMP)&_logos_method$_ungrouped$PUTabbedLibraryViewControllerPadSpec$createSharedAlbumListViewController, (IMP*)&_logos_orig$_ungrouped$PUTabbedLibraryViewControllerPadSpec$createSharedAlbumListViewController);}Class _logos_class$_ungrouped$PUTabbedLibraryViewController = objc_getClass("PUTabbedLibraryViewController"); { MSHookMessageEx(_logos_class$_ungrouped$PUTabbedLibraryViewController, @selector(setSelectedContentMode:), (IMP)&_logos_method$_ungrouped$PUTabbedLibraryViewController$setSelectedContentMode$, (IMP*)&_logos_orig$_ungrouped$PUTabbedLibraryViewController$setSelectedContentMode$);}Class _logos_class$_ungrouped$UITabBarButton = objc_getClass("UITabBarButton"); { MSHookMessageEx(_logos_class$_ungrouped$UITabBarButton, @selector(setEnabled:), (IMP)&_logos_method$_ungrouped$UITabBarButton$setEnabled$, (IMP*)&_logos_orig$_ungrouped$UITabBarButton$setEnabled$);}} }
#line 148 "Tweak.xm"
