#import <UIKit/UIKit.h>

%hook PXPhotoKitCollectionsDataSource
- (long long)numberOfItemsInSection:(long long)arg1 {
    // Number Of Albums Shown: (Return Value): Set number to your needs...
    return 1;
}
%end

%hook PUAlbumListViewController
- (bool)showPeople {
    // People
    return 0;
}
%end

%hook PHFetchOptions
- (bool)includePlacesSmartAlbum {
    // Places
    return 0;
}
%end

%hook PUAlbumListViewController
- (bool)showScenes {
    // Scenes
    return 0;
}
%end

%hook PXPhotoKitCollectionsDataSource
- (long long)numberOfSections {
    // My Albums: (Hide=1, Show=P)
    return 1;
}
%end

%hook PXPhotoKitCollectionsDataSourceManager
- (bool)containsAnyAssets:(id)arg1 {
    return 1;
}
%end

