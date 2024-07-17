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

@class PUAlbumListViewController; @class PXPhotoKitCollectionsDataSource; @class PHFetchOptions; @class PXPhotoKitCollectionsDataSourceManager; 
static long long (*_logos_orig$_ungrouped$PXPhotoKitCollectionsDataSource$numberOfItemsInSection$)(_LOGOS_SELF_TYPE_NORMAL PXPhotoKitCollectionsDataSource* _LOGOS_SELF_CONST, SEL, long long); static long long _logos_method$_ungrouped$PXPhotoKitCollectionsDataSource$numberOfItemsInSection$(_LOGOS_SELF_TYPE_NORMAL PXPhotoKitCollectionsDataSource* _LOGOS_SELF_CONST, SEL, long long); static long long (*_logos_orig$_ungrouped$PXPhotoKitCollectionsDataSource$numberOfSections)(_LOGOS_SELF_TYPE_NORMAL PXPhotoKitCollectionsDataSource* _LOGOS_SELF_CONST, SEL); static long long _logos_method$_ungrouped$PXPhotoKitCollectionsDataSource$numberOfSections(_LOGOS_SELF_TYPE_NORMAL PXPhotoKitCollectionsDataSource* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$PUAlbumListViewController$showPeople)(_LOGOS_SELF_TYPE_NORMAL PUAlbumListViewController* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$PUAlbumListViewController$showPeople(_LOGOS_SELF_TYPE_NORMAL PUAlbumListViewController* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$PUAlbumListViewController$showScenes)(_LOGOS_SELF_TYPE_NORMAL PUAlbumListViewController* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$PUAlbumListViewController$showScenes(_LOGOS_SELF_TYPE_NORMAL PUAlbumListViewController* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$PHFetchOptions$includePlacesSmartAlbum)(_LOGOS_SELF_TYPE_NORMAL PHFetchOptions* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$PHFetchOptions$includePlacesSmartAlbum(_LOGOS_SELF_TYPE_NORMAL PHFetchOptions* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$PXPhotoKitCollectionsDataSourceManager$containsAnyAssets$)(_LOGOS_SELF_TYPE_NORMAL PXPhotoKitCollectionsDataSourceManager* _LOGOS_SELF_CONST, SEL, id); static bool _logos_method$_ungrouped$PXPhotoKitCollectionsDataSourceManager$containsAnyAssets$(_LOGOS_SELF_TYPE_NORMAL PXPhotoKitCollectionsDataSourceManager* _LOGOS_SELF_CONST, SEL, id); 

#line 3 "Tweak.xm"

static long long _logos_method$_ungrouped$PXPhotoKitCollectionsDataSource$numberOfItemsInSection$(_LOGOS_SELF_TYPE_NORMAL PXPhotoKitCollectionsDataSource* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, long long arg1) {
    
    return 1;
}



static bool _logos_method$_ungrouped$PUAlbumListViewController$showPeople(_LOGOS_SELF_TYPE_NORMAL PUAlbumListViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 0;
}



static bool _logos_method$_ungrouped$PHFetchOptions$includePlacesSmartAlbum(_LOGOS_SELF_TYPE_NORMAL PHFetchOptions* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 0;
}



static bool _logos_method$_ungrouped$PUAlbumListViewController$showScenes(_LOGOS_SELF_TYPE_NORMAL PUAlbumListViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 0;
}



static long long _logos_method$_ungrouped$PXPhotoKitCollectionsDataSource$numberOfSections(_LOGOS_SELF_TYPE_NORMAL PXPhotoKitCollectionsDataSource* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 1;
}



static bool _logos_method$_ungrouped$PXPhotoKitCollectionsDataSourceManager$containsAnyAssets$(_LOGOS_SELF_TYPE_NORMAL PXPhotoKitCollectionsDataSourceManager* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    return 1;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$PXPhotoKitCollectionsDataSource = objc_getClass("PXPhotoKitCollectionsDataSource"); { MSHookMessageEx(_logos_class$_ungrouped$PXPhotoKitCollectionsDataSource, @selector(numberOfItemsInSection:), (IMP)&_logos_method$_ungrouped$PXPhotoKitCollectionsDataSource$numberOfItemsInSection$, (IMP*)&_logos_orig$_ungrouped$PXPhotoKitCollectionsDataSource$numberOfItemsInSection$);}{ MSHookMessageEx(_logos_class$_ungrouped$PXPhotoKitCollectionsDataSource, @selector(numberOfSections), (IMP)&_logos_method$_ungrouped$PXPhotoKitCollectionsDataSource$numberOfSections, (IMP*)&_logos_orig$_ungrouped$PXPhotoKitCollectionsDataSource$numberOfSections);}Class _logos_class$_ungrouped$PUAlbumListViewController = objc_getClass("PUAlbumListViewController"); { MSHookMessageEx(_logos_class$_ungrouped$PUAlbumListViewController, @selector(showPeople), (IMP)&_logos_method$_ungrouped$PUAlbumListViewController$showPeople, (IMP*)&_logos_orig$_ungrouped$PUAlbumListViewController$showPeople);}{ MSHookMessageEx(_logos_class$_ungrouped$PUAlbumListViewController, @selector(showScenes), (IMP)&_logos_method$_ungrouped$PUAlbumListViewController$showScenes, (IMP*)&_logos_orig$_ungrouped$PUAlbumListViewController$showScenes);}Class _logos_class$_ungrouped$PHFetchOptions = objc_getClass("PHFetchOptions"); { MSHookMessageEx(_logos_class$_ungrouped$PHFetchOptions, @selector(includePlacesSmartAlbum), (IMP)&_logos_method$_ungrouped$PHFetchOptions$includePlacesSmartAlbum, (IMP*)&_logos_orig$_ungrouped$PHFetchOptions$includePlacesSmartAlbum);}Class _logos_class$_ungrouped$PXPhotoKitCollectionsDataSourceManager = objc_getClass("PXPhotoKitCollectionsDataSourceManager"); { MSHookMessageEx(_logos_class$_ungrouped$PXPhotoKitCollectionsDataSourceManager, @selector(containsAnyAssets:), (IMP)&_logos_method$_ungrouped$PXPhotoKitCollectionsDataSourceManager$containsAnyAssets$, (IMP*)&_logos_orig$_ungrouped$PXPhotoKitCollectionsDataSourceManager$containsAnyAssets$);}} }
#line 44 "Tweak.xm"
