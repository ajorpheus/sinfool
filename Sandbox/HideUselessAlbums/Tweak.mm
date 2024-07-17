#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$PXPhotoKitCollectionsDataSourceManager$containsAnyAssets$(id self, SEL _cmd, id arg1) {
    // Thumbnail Preview Photo
    return 1;
}

static bool _patched_ftt_meth_$PXPhotoKitCollectionsDataSourceManager$_containsAnyAssets$(id self, SEL _cmd, id arg1) {
    // Useless Albums (i.e. Videos, Selfies, Screenshots etc): (Show=pass-through, Show All=TRUE, Hide=False)
    return 0;
}

static bool _patched_ftt_meth_$PUAlbumListViewController$showPeople(id self, SEL _cmd) {
    // People Album
    return 0;
}

static bool _patched_ftt_meth_$PHFetchOptions$includePlacesSmartAlbum(id self, SEL _cmd) {
    // Places Album
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_PXPhotoKitCollectionsDataSourceManager = objc_getClass("PXPhotoKitCollectionsDataSourceManager");
    MSHookMessageEx(_ftt_class_PXPhotoKitCollectionsDataSourceManager, @selector(containsAnyAssets:), (IMP)_patched_ftt_meth_$PXPhotoKitCollectionsDataSourceManager$containsAnyAssets$, NULL);
    MSHookMessageEx(_ftt_class_PXPhotoKitCollectionsDataSourceManager, @selector(_containsAnyAssets:), (IMP)_patched_ftt_meth_$PXPhotoKitCollectionsDataSourceManager$_containsAnyAssets$, NULL);
    Class _ftt_class_PUAlbumListViewController = objc_getClass("PUAlbumListViewController");
    MSHookMessageEx(_ftt_class_PUAlbumListViewController, @selector(showPeople), (IMP)_patched_ftt_meth_$PUAlbumListViewController$showPeople, NULL);
    Class _ftt_class_PHFetchOptions = objc_getClass("PHFetchOptions");
    MSHookMessageEx(_ftt_class_PHFetchOptions, @selector(includePlacesSmartAlbum), (IMP)_patched_ftt_meth_$PHFetchOptions$includePlacesSmartAlbum, NULL);
}
