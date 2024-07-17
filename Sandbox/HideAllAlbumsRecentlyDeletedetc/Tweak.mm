#import <UIKit/UIKit.h>

#include <substrate.h>

static long long _patched_ftt_meth_$PXPhotoKitCollectionsDataSource$numberOfItemsInSection$(id self, SEL _cmd, long long arg1) {
    // Number Of Albums Shown: (Return Value): Set number to your needs...
    return 1;
}

static bool _patched_ftt_meth_$PUAlbumListViewController$showPeople(id self, SEL _cmd) {
    // People
    return 0;
}

static bool _patched_ftt_meth_$PHFetchOptions$includePlacesSmartAlbum(id self, SEL _cmd) {
    // Places
    return 0;
}

static bool _patched_ftt_meth_$PUAlbumListViewController$showScenes(id self, SEL _cmd) {
    // Scenes
    return 0;
}

static long long _patched_ftt_meth_$PXPhotoKitCollectionsDataSource$numberOfSections(id self, SEL _cmd) {
    // My Albums: (Hide=1, Show=P)
    return 1;
}

static bool _patched_ftt_meth_$PXPhotoKitCollectionsDataSourceManager$containsAnyAssets$(id self, SEL _cmd, id arg1) {
    return 1;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_PXPhotoKitCollectionsDataSource = objc_getClass("PXPhotoKitCollectionsDataSource");
    MSHookMessageEx(_ftt_class_PXPhotoKitCollectionsDataSource, @selector(numberOfItemsInSection:), (IMP)_patched_ftt_meth_$PXPhotoKitCollectionsDataSource$numberOfItemsInSection$, NULL);
    Class _ftt_class_PUAlbumListViewController = objc_getClass("PUAlbumListViewController");
    MSHookMessageEx(_ftt_class_PUAlbumListViewController, @selector(showPeople), (IMP)_patched_ftt_meth_$PUAlbumListViewController$showPeople, NULL);
    Class _ftt_class_PHFetchOptions = objc_getClass("PHFetchOptions");
    MSHookMessageEx(_ftt_class_PHFetchOptions, @selector(includePlacesSmartAlbum), (IMP)_patched_ftt_meth_$PHFetchOptions$includePlacesSmartAlbum, NULL);
    MSHookMessageEx(_ftt_class_PUAlbumListViewController, @selector(showScenes), (IMP)_patched_ftt_meth_$PUAlbumListViewController$showScenes, NULL);
    MSHookMessageEx(_ftt_class_PXPhotoKitCollectionsDataSource, @selector(numberOfSections), (IMP)_patched_ftt_meth_$PXPhotoKitCollectionsDataSource$numberOfSections, NULL);
    Class _ftt_class_PXPhotoKitCollectionsDataSourceManager = objc_getClass("PXPhotoKitCollectionsDataSourceManager");
    MSHookMessageEx(_ftt_class_PXPhotoKitCollectionsDataSourceManager, @selector(containsAnyAssets:), (IMP)_patched_ftt_meth_$PXPhotoKitCollectionsDataSourceManager$containsAnyAssets$, NULL);
}
