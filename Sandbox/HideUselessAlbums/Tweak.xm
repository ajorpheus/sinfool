#import <UIKit/UIKit.h>

%hook PXPhotoKitCollectionsDataSourceManager
- (bool)containsAnyAssets:(id)arg1 {
    // Thumbnail Preview Photo
    return 1;
}
%end

%hook PXPhotoKitCollectionsDataSourceManager
- (bool)_containsAnyAssets:(id)arg1 {
    // Useless Albums (i.e. Videos, Selfies, Screenshots etc): (Show=pass-through, Show All=TRUE, Hide=False)
    return 0;
}
%end

%hook PUAlbumListViewController
- (bool)showPeople {
    // People Album
    return 0;
}
%end

%hook PHFetchOptions
- (bool)includePlacesSmartAlbum {
    // Places Album
    return 0;
}
%end

