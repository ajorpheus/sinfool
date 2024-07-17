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

@class PUTabbedLibraryViewControllerPhoneSpec; @class UITabBar; @class PUPhotoBrowserTitleView; @class UITableViewCell; @class PUPhotoEditViewController; @class UITabBarButton; @class PUAlbumListCellContentView; @class PUPhotosAlbumViewController; @class PUTabbedLibraryViewControllerPadSpec; @class PUAlbumListViewController; @class PUTabbedLibraryViewController; @class PUOneUpSettings; @class PUOneUpTilingLayout; @class PUPhotosGridViewController; @class PUDeletePhotosActionController; 
static bool (*_logos_orig$_ungrouped$PUPhotosGridViewController$allowSelectAllButton)(_LOGOS_SELF_TYPE_NORMAL PUPhotosGridViewController* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$PUPhotosGridViewController$allowSelectAllButton(_LOGOS_SELF_TYPE_NORMAL PUPhotosGridViewController* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$PUPhotosGridViewController$alwaysHideTabBar)(_LOGOS_SELF_TYPE_NORMAL PUPhotosGridViewController* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$PUPhotosGridViewController$alwaysHideTabBar(_LOGOS_SELF_TYPE_NORMAL PUPhotosGridViewController* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$PUPhotosAlbumViewController$allowSelectAllButton)(_LOGOS_SELF_TYPE_NORMAL PUPhotosAlbumViewController* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$PUPhotosAlbumViewController$allowSelectAllButton(_LOGOS_SELF_TYPE_NORMAL PUPhotosAlbumViewController* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$PUAlbumListViewController$disallowsSearch)(_LOGOS_SELF_TYPE_NORMAL PUAlbumListViewController* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$PUAlbumListViewController$disallowsSearch(_LOGOS_SELF_TYPE_NORMAL PUAlbumListViewController* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$PUAlbumListViewController$canReorderCollection$)(_LOGOS_SELF_TYPE_NORMAL PUAlbumListViewController* _LOGOS_SELF_CONST, SEL, id); static bool _logos_method$_ungrouped$PUAlbumListViewController$canReorderCollection$(_LOGOS_SELF_TYPE_NORMAL PUAlbumListViewController* _LOGOS_SELF_CONST, SEL, id); static bool (*_logos_orig$_ungrouped$PUAlbumListViewController$_containsAnyAssets$)(_LOGOS_SELF_TYPE_NORMAL PUAlbumListViewController* _LOGOS_SELF_CONST, SEL, id); static bool _logos_method$_ungrouped$PUAlbumListViewController$_containsAnyAssets$(_LOGOS_SELF_TYPE_NORMAL PUAlbumListViewController* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$PUAlbumListViewController$_getDisplayableAssets$indexes$forCollection$maximumCount$useCache$)(_LOGOS_SELF_TYPE_NORMAL PUAlbumListViewController* _LOGOS_SELF_CONST, SEL, id*, id*, id, long long, bool); static void _logos_method$_ungrouped$PUAlbumListViewController$_getDisplayableAssets$indexes$forCollection$maximumCount$useCache$(_LOGOS_SELF_TYPE_NORMAL PUAlbumListViewController* _LOGOS_SELF_CONST, SEL, id*, id*, id, long long, bool); static void (*_logos_orig$_ungrouped$PUAlbumListViewController$navigateToCollection$animated$completion$)(_LOGOS_SELF_TYPE_NORMAL PUAlbumListViewController* _LOGOS_SELF_CONST, SEL, id, bool, id); static void _logos_method$_ungrouped$PUAlbumListViewController$navigateToCollection$animated$completion$(_LOGOS_SELF_TYPE_NORMAL PUAlbumListViewController* _LOGOS_SELF_CONST, SEL, id, bool, id); static id (*_logos_orig$_ungrouped$PUAlbumListCellContentView$subtitle)(_LOGOS_SELF_TYPE_NORMAL PUAlbumListCellContentView* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$PUAlbumListCellContentView$subtitle(_LOGOS_SELF_TYPE_NORMAL PUAlbumListCellContentView* _LOGOS_SELF_CONST, SEL); static id (*_logos_orig$_ungrouped$UITableViewCell$_disclosureChevronImage$)(_LOGOS_SELF_TYPE_NORMAL UITableViewCell* _LOGOS_SELF_CONST, SEL, bool); static id _logos_method$_ungrouped$UITableViewCell$_disclosureChevronImage$(_LOGOS_SELF_TYPE_NORMAL UITableViewCell* _LOGOS_SELF_CONST, SEL, bool); static bool (*_logos_orig$_ungrouped$PUOneUpSettings$allowParallax)(_LOGOS_SELF_TYPE_NORMAL PUOneUpSettings* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$PUOneUpSettings$allowParallax(_LOGOS_SELF_TYPE_NORMAL PUOneUpSettings* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$PUOneUpSettings$setInterpageSpacing$)(_LOGOS_SELF_TYPE_NORMAL PUOneUpSettings* _LOGOS_SELF_CONST, SEL, double); static void _logos_method$_ungrouped$PUOneUpSettings$setInterpageSpacing$(_LOGOS_SELF_TYPE_NORMAL PUOneUpSettings* _LOGOS_SELF_CONST, SEL, double); static double (*_logos_orig$_ungrouped$PUOneUpSettings$maximumInitialZoomToFillScaleForCompactSizeClass)(_LOGOS_SELF_TYPE_NORMAL PUOneUpSettings* _LOGOS_SELF_CONST, SEL); static double _logos_method$_ungrouped$PUOneUpSettings$maximumInitialZoomToFillScaleForCompactSizeClass(_LOGOS_SELF_TYPE_NORMAL PUOneUpSettings* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$PUOneUpSettings$setDefaultMaximumZoomFactor$)(_LOGOS_SELF_TYPE_NORMAL PUOneUpSettings* _LOGOS_SELF_CONST, SEL, double); static void _logos_method$_ungrouped$PUOneUpSettings$setDefaultMaximumZoomFactor$(_LOGOS_SELF_TYPE_NORMAL PUOneUpSettings* _LOGOS_SELF_CONST, SEL, double); static float (*_logos_orig$_ungrouped$PUOneUpTilingLayout$tileContentMaximumInitialZoomToFillScale)(_LOGOS_SELF_TYPE_NORMAL PUOneUpTilingLayout* _LOGOS_SELF_CONST, SEL); static float _logos_method$_ungrouped$PUOneUpTilingLayout$tileContentMaximumInitialZoomToFillScale(_LOGOS_SELF_TYPE_NORMAL PUOneUpTilingLayout* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$PUPhotoBrowserTitleView$_isSecondaryLabelVisible)(_LOGOS_SELF_TYPE_NORMAL PUPhotoBrowserTitleView* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$PUPhotoBrowserTitleView$_isSecondaryLabelVisible(_LOGOS_SELF_TYPE_NORMAL PUPhotoBrowserTitleView* _LOGOS_SELF_CONST, SEL); static id (*_logos_orig$_ungrouped$PUPhotoBrowserTitleView$_secondaryLabel)(_LOGOS_SELF_TYPE_NORMAL PUPhotoBrowserTitleView* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$PUPhotoBrowserTitleView$_secondaryLabel(_LOGOS_SELF_TYPE_NORMAL PUPhotoBrowserTitleView* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$PUPhotoEditViewController$_shouldDisplayRedEyeTool)(_LOGOS_SELF_TYPE_NORMAL PUPhotoEditViewController* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$PUPhotoEditViewController$_shouldDisplayRedEyeTool(_LOGOS_SELF_TYPE_NORMAL PUPhotoEditViewController* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$PUDeletePhotosActionController$shouldSkipDeleteConfirmation)(_LOGOS_SELF_TYPE_NORMAL PUDeletePhotosActionController* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$PUDeletePhotosActionController$shouldSkipDeleteConfirmation(_LOGOS_SELF_TYPE_NORMAL PUDeletePhotosActionController* _LOGOS_SELF_CONST, SEL); static id (*_logos_orig$_ungrouped$PUTabbedLibraryViewControllerPhoneSpec$createSharedAlbumListViewController)(_LOGOS_SELF_TYPE_NORMAL PUTabbedLibraryViewControllerPhoneSpec* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$PUTabbedLibraryViewControllerPhoneSpec$createSharedAlbumListViewController(_LOGOS_SELF_TYPE_NORMAL PUTabbedLibraryViewControllerPhoneSpec* _LOGOS_SELF_CONST, SEL); static id (*_logos_orig$_ungrouped$PUTabbedLibraryViewControllerPadSpec$createSharedAlbumListViewController)(_LOGOS_SELF_TYPE_NORMAL PUTabbedLibraryViewControllerPadSpec* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$PUTabbedLibraryViewControllerPadSpec$createSharedAlbumListViewController(_LOGOS_SELF_TYPE_NORMAL PUTabbedLibraryViewControllerPadSpec* _LOGOS_SELF_CONST, SEL); static UITabBarButton* (*_logos_orig$_ungrouped$UITabBarButton$initWithImage$selectedImage$label$withInsets$)(_LOGOS_SELF_TYPE_INIT UITabBarButton*, SEL, id, id, id, UIEdgeInsets) _LOGOS_RETURN_RETAINED; static UITabBarButton* _logos_method$_ungrouped$UITabBarButton$initWithImage$selectedImage$label$withInsets$(_LOGOS_SELF_TYPE_INIT UITabBarButton*, SEL, id, id, id, UIEdgeInsets) _LOGOS_RETURN_RETAINED; static bool (*_logos_orig$_ungrouped$UITabBar$_backgroundNeedsUpdate)(_LOGOS_SELF_TYPE_NORMAL UITabBar* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$UITabBar$_backgroundNeedsUpdate(_LOGOS_SELF_TYPE_NORMAL UITabBar* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$UITabBar$_wantsAdaptiveBackdrop)(_LOGOS_SELF_TYPE_NORMAL UITabBar* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$UITabBar$_wantsAdaptiveBackdrop(_LOGOS_SELF_TYPE_NORMAL UITabBar* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$PUTabbedLibraryViewController$setSelectedContentMode$)(_LOGOS_SELF_TYPE_NORMAL PUTabbedLibraryViewController* _LOGOS_SELF_CONST, SEL, int); static void _logos_method$_ungrouped$PUTabbedLibraryViewController$setSelectedContentMode$(_LOGOS_SELF_TYPE_NORMAL PUTabbedLibraryViewController* _LOGOS_SELF_CONST, SEL, int); 

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



static bool _logos_method$_ungrouped$PUAlbumListViewController$canReorderCollection$(_LOGOS_SELF_TYPE_NORMAL PUAlbumListViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    return 1;
}



static bool _logos_method$_ungrouped$PUAlbumListViewController$_containsAnyAssets$(_LOGOS_SELF_TYPE_NORMAL PUAlbumListViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    return 0;
}



static void _logos_method$_ungrouped$PUAlbumListViewController$_getDisplayableAssets$indexes$forCollection$maximumCount$useCache$(_LOGOS_SELF_TYPE_NORMAL PUAlbumListViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id* arg1, id* arg2, id arg3, long long arg4, bool arg5) {
    
    arg5 = 1;
    _logos_orig$_ungrouped$PUAlbumListViewController$_getDisplayableAssets$indexes$forCollection$maximumCount$useCache$(self, _cmd, arg1, arg2, arg3, arg4, arg5);
}



static id _logos_method$_ungrouped$PUAlbumListCellContentView$subtitle(_LOGOS_SELF_TYPE_NORMAL PUAlbumListCellContentView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return NULL;
}



static id _logos_method$_ungrouped$UITableViewCell$_disclosureChevronImage$(_LOGOS_SELF_TYPE_NORMAL UITableViewCell* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, bool arg1) {
    
    return NULL;
}



static void _logos_method$_ungrouped$PUAlbumListViewController$navigateToCollection$animated$completion$(_LOGOS_SELF_TYPE_NORMAL PUAlbumListViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, bool arg2, id arg3) {
    
    arg2 = 0;
    _logos_orig$_ungrouped$PUAlbumListViewController$navigateToCollection$animated$completion$(self, _cmd, arg1, arg2, arg3);
}



static bool _logos_method$_ungrouped$PUOneUpSettings$allowParallax(_LOGOS_SELF_TYPE_NORMAL PUOneUpSettings* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 0;
}



static void _logos_method$_ungrouped$PUOneUpSettings$setInterpageSpacing$(_LOGOS_SELF_TYPE_NORMAL PUOneUpSettings* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, double arg1) {
    
    arg1 = 5;
    _logos_orig$_ungrouped$PUOneUpSettings$setInterpageSpacing$(self, _cmd, arg1);
}



static float _logos_method$_ungrouped$PUOneUpTilingLayout$tileContentMaximumInitialZoomToFillScale(_LOGOS_SELF_TYPE_NORMAL PUOneUpTilingLayout* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 0;
}



static double _logos_method$_ungrouped$PUOneUpSettings$maximumInitialZoomToFillScaleForCompactSizeClass(_LOGOS_SELF_TYPE_NORMAL PUOneUpSettings* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 0;
}



static void _logos_method$_ungrouped$PUOneUpSettings$setDefaultMaximumZoomFactor$(_LOGOS_SELF_TYPE_NORMAL PUOneUpSettings* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, double arg1) {
    
    arg1 = 500;
    _logos_orig$_ungrouped$PUOneUpSettings$setDefaultMaximumZoomFactor$(self, _cmd, arg1);
}



static bool _logos_method$_ungrouped$PUPhotoBrowserTitleView$_isSecondaryLabelVisible(_LOGOS_SELF_TYPE_NORMAL PUPhotoBrowserTitleView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 0;
}



static id _logos_method$_ungrouped$PUPhotoBrowserTitleView$_secondaryLabel(_LOGOS_SELF_TYPE_NORMAL PUPhotoBrowserTitleView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return NULL;
}



static bool _logos_method$_ungrouped$PUPhotoEditViewController$_shouldDisplayRedEyeTool(_LOGOS_SELF_TYPE_NORMAL PUPhotoEditViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 1;
}



static bool _logos_method$_ungrouped$PUDeletePhotosActionController$shouldSkipDeleteConfirmation(_LOGOS_SELF_TYPE_NORMAL PUDeletePhotosActionController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 1;
}



static bool _logos_method$_ungrouped$PUPhotosGridViewController$alwaysHideTabBar(_LOGOS_SELF_TYPE_NORMAL PUPhotosGridViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 1;
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



static bool _logos_method$_ungrouped$UITabBar$_wantsAdaptiveBackdrop(_LOGOS_SELF_TYPE_NORMAL UITabBar* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 0;
}



static void _logos_method$_ungrouped$PUTabbedLibraryViewController$setSelectedContentMode$(_LOGOS_SELF_TYPE_NORMAL PUTabbedLibraryViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, int arg1) {
    
    arg1 = 2;
    _logos_orig$_ungrouped$PUTabbedLibraryViewController$setSelectedContentMode$(self, _cmd, arg1);
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$PUPhotosGridViewController = objc_getClass("PUPhotosGridViewController"); { MSHookMessageEx(_logos_class$_ungrouped$PUPhotosGridViewController, @selector(allowSelectAllButton), (IMP)&_logos_method$_ungrouped$PUPhotosGridViewController$allowSelectAllButton, (IMP*)&_logos_orig$_ungrouped$PUPhotosGridViewController$allowSelectAllButton);}{ MSHookMessageEx(_logos_class$_ungrouped$PUPhotosGridViewController, @selector(alwaysHideTabBar), (IMP)&_logos_method$_ungrouped$PUPhotosGridViewController$alwaysHideTabBar, (IMP*)&_logos_orig$_ungrouped$PUPhotosGridViewController$alwaysHideTabBar);}Class _logos_class$_ungrouped$PUPhotosAlbumViewController = objc_getClass("PUPhotosAlbumViewController"); { MSHookMessageEx(_logos_class$_ungrouped$PUPhotosAlbumViewController, @selector(allowSelectAllButton), (IMP)&_logos_method$_ungrouped$PUPhotosAlbumViewController$allowSelectAllButton, (IMP*)&_logos_orig$_ungrouped$PUPhotosAlbumViewController$allowSelectAllButton);}Class _logos_class$_ungrouped$PUAlbumListViewController = objc_getClass("PUAlbumListViewController"); { MSHookMessageEx(_logos_class$_ungrouped$PUAlbumListViewController, @selector(disallowsSearch), (IMP)&_logos_method$_ungrouped$PUAlbumListViewController$disallowsSearch, (IMP*)&_logos_orig$_ungrouped$PUAlbumListViewController$disallowsSearch);}{ MSHookMessageEx(_logos_class$_ungrouped$PUAlbumListViewController, @selector(canReorderCollection:), (IMP)&_logos_method$_ungrouped$PUAlbumListViewController$canReorderCollection$, (IMP*)&_logos_orig$_ungrouped$PUAlbumListViewController$canReorderCollection$);}{ MSHookMessageEx(_logos_class$_ungrouped$PUAlbumListViewController, @selector(_containsAnyAssets:), (IMP)&_logos_method$_ungrouped$PUAlbumListViewController$_containsAnyAssets$, (IMP*)&_logos_orig$_ungrouped$PUAlbumListViewController$_containsAnyAssets$);}{ MSHookMessageEx(_logos_class$_ungrouped$PUAlbumListViewController, @selector(_getDisplayableAssets:indexes:forCollection:maximumCount:useCache:), (IMP)&_logos_method$_ungrouped$PUAlbumListViewController$_getDisplayableAssets$indexes$forCollection$maximumCount$useCache$, (IMP*)&_logos_orig$_ungrouped$PUAlbumListViewController$_getDisplayableAssets$indexes$forCollection$maximumCount$useCache$);}{ MSHookMessageEx(_logos_class$_ungrouped$PUAlbumListViewController, @selector(navigateToCollection:animated:completion:), (IMP)&_logos_method$_ungrouped$PUAlbumListViewController$navigateToCollection$animated$completion$, (IMP*)&_logos_orig$_ungrouped$PUAlbumListViewController$navigateToCollection$animated$completion$);}Class _logos_class$_ungrouped$PUAlbumListCellContentView = objc_getClass("PUAlbumListCellContentView"); { MSHookMessageEx(_logos_class$_ungrouped$PUAlbumListCellContentView, @selector(subtitle), (IMP)&_logos_method$_ungrouped$PUAlbumListCellContentView$subtitle, (IMP*)&_logos_orig$_ungrouped$PUAlbumListCellContentView$subtitle);}Class _logos_class$_ungrouped$UITableViewCell = objc_getClass("UITableViewCell"); { MSHookMessageEx(_logos_class$_ungrouped$UITableViewCell, @selector(_disclosureChevronImage:), (IMP)&_logos_method$_ungrouped$UITableViewCell$_disclosureChevronImage$, (IMP*)&_logos_orig$_ungrouped$UITableViewCell$_disclosureChevronImage$);}Class _logos_class$_ungrouped$PUOneUpSettings = objc_getClass("PUOneUpSettings"); { MSHookMessageEx(_logos_class$_ungrouped$PUOneUpSettings, @selector(allowParallax), (IMP)&_logos_method$_ungrouped$PUOneUpSettings$allowParallax, (IMP*)&_logos_orig$_ungrouped$PUOneUpSettings$allowParallax);}{ MSHookMessageEx(_logos_class$_ungrouped$PUOneUpSettings, @selector(setInterpageSpacing:), (IMP)&_logos_method$_ungrouped$PUOneUpSettings$setInterpageSpacing$, (IMP*)&_logos_orig$_ungrouped$PUOneUpSettings$setInterpageSpacing$);}{ MSHookMessageEx(_logos_class$_ungrouped$PUOneUpSettings, @selector(maximumInitialZoomToFillScaleForCompactSizeClass), (IMP)&_logos_method$_ungrouped$PUOneUpSettings$maximumInitialZoomToFillScaleForCompactSizeClass, (IMP*)&_logos_orig$_ungrouped$PUOneUpSettings$maximumInitialZoomToFillScaleForCompactSizeClass);}{ MSHookMessageEx(_logos_class$_ungrouped$PUOneUpSettings, @selector(setDefaultMaximumZoomFactor:), (IMP)&_logos_method$_ungrouped$PUOneUpSettings$setDefaultMaximumZoomFactor$, (IMP*)&_logos_orig$_ungrouped$PUOneUpSettings$setDefaultMaximumZoomFactor$);}Class _logos_class$_ungrouped$PUOneUpTilingLayout = objc_getClass("PUOneUpTilingLayout"); { MSHookMessageEx(_logos_class$_ungrouped$PUOneUpTilingLayout, @selector(tileContentMaximumInitialZoomToFillScale), (IMP)&_logos_method$_ungrouped$PUOneUpTilingLayout$tileContentMaximumInitialZoomToFillScale, (IMP*)&_logos_orig$_ungrouped$PUOneUpTilingLayout$tileContentMaximumInitialZoomToFillScale);}Class _logos_class$_ungrouped$PUPhotoBrowserTitleView = objc_getClass("PUPhotoBrowserTitleView"); { MSHookMessageEx(_logos_class$_ungrouped$PUPhotoBrowserTitleView, @selector(_isSecondaryLabelVisible), (IMP)&_logos_method$_ungrouped$PUPhotoBrowserTitleView$_isSecondaryLabelVisible, (IMP*)&_logos_orig$_ungrouped$PUPhotoBrowserTitleView$_isSecondaryLabelVisible);}{ MSHookMessageEx(_logos_class$_ungrouped$PUPhotoBrowserTitleView, @selector(_secondaryLabel), (IMP)&_logos_method$_ungrouped$PUPhotoBrowserTitleView$_secondaryLabel, (IMP*)&_logos_orig$_ungrouped$PUPhotoBrowserTitleView$_secondaryLabel);}Class _logos_class$_ungrouped$PUPhotoEditViewController = objc_getClass("PUPhotoEditViewController"); { MSHookMessageEx(_logos_class$_ungrouped$PUPhotoEditViewController, @selector(_shouldDisplayRedEyeTool), (IMP)&_logos_method$_ungrouped$PUPhotoEditViewController$_shouldDisplayRedEyeTool, (IMP*)&_logos_orig$_ungrouped$PUPhotoEditViewController$_shouldDisplayRedEyeTool);}Class _logos_class$_ungrouped$PUDeletePhotosActionController = objc_getClass("PUDeletePhotosActionController"); { MSHookMessageEx(_logos_class$_ungrouped$PUDeletePhotosActionController, @selector(shouldSkipDeleteConfirmation), (IMP)&_logos_method$_ungrouped$PUDeletePhotosActionController$shouldSkipDeleteConfirmation, (IMP*)&_logos_orig$_ungrouped$PUDeletePhotosActionController$shouldSkipDeleteConfirmation);}Class _logos_class$_ungrouped$PUTabbedLibraryViewControllerPhoneSpec = objc_getClass("PUTabbedLibraryViewControllerPhoneSpec"); { MSHookMessageEx(_logos_class$_ungrouped$PUTabbedLibraryViewControllerPhoneSpec, @selector(createSharedAlbumListViewController), (IMP)&_logos_method$_ungrouped$PUTabbedLibraryViewControllerPhoneSpec$createSharedAlbumListViewController, (IMP*)&_logos_orig$_ungrouped$PUTabbedLibraryViewControllerPhoneSpec$createSharedAlbumListViewController);}Class _logos_class$_ungrouped$PUTabbedLibraryViewControllerPadSpec = objc_getClass("PUTabbedLibraryViewControllerPadSpec"); { MSHookMessageEx(_logos_class$_ungrouped$PUTabbedLibraryViewControllerPadSpec, @selector(createSharedAlbumListViewController), (IMP)&_logos_method$_ungrouped$PUTabbedLibraryViewControllerPadSpec$createSharedAlbumListViewController, (IMP*)&_logos_orig$_ungrouped$PUTabbedLibraryViewControllerPadSpec$createSharedAlbumListViewController);}Class _logos_class$_ungrouped$UITabBarButton = objc_getClass("UITabBarButton"); { MSHookMessageEx(_logos_class$_ungrouped$UITabBarButton, @selector(initWithImage:selectedImage:label:withInsets:), (IMP)&_logos_method$_ungrouped$UITabBarButton$initWithImage$selectedImage$label$withInsets$, (IMP*)&_logos_orig$_ungrouped$UITabBarButton$initWithImage$selectedImage$label$withInsets$);}Class _logos_class$_ungrouped$UITabBar = objc_getClass("UITabBar"); { MSHookMessageEx(_logos_class$_ungrouped$UITabBar, @selector(_backgroundNeedsUpdate), (IMP)&_logos_method$_ungrouped$UITabBar$_backgroundNeedsUpdate, (IMP*)&_logos_orig$_ungrouped$UITabBar$_backgroundNeedsUpdate);}{ MSHookMessageEx(_logos_class$_ungrouped$UITabBar, @selector(_wantsAdaptiveBackdrop), (IMP)&_logos_method$_ungrouped$UITabBar$_wantsAdaptiveBackdrop, (IMP*)&_logos_orig$_ungrouped$UITabBar$_wantsAdaptiveBackdrop);}Class _logos_class$_ungrouped$PUTabbedLibraryViewController = objc_getClass("PUTabbedLibraryViewController"); { MSHookMessageEx(_logos_class$_ungrouped$PUTabbedLibraryViewController, @selector(setSelectedContentMode:), (IMP)&_logos_method$_ungrouped$PUTabbedLibraryViewController$setSelectedContentMode$, (IMP*)&_logos_orig$_ungrouped$PUTabbedLibraryViewController$setSelectedContentMode$);}} }
#line 183 "Tweak.xm"
