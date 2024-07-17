#import <UIKit/UIKit.h>

%hook PUPhotosGridViewController
- (bool)allowSelectAllButton {
    // Photos/Moments - Enable Select All Button
    return 1;
}
%end

%hook PUPhotosAlbumViewController
- (bool)allowSelectAllButton {
    // Camera Roll - Enable Select All Button
    return 1;
}
%end

%hook PUAlbumListViewController
- (bool)disallowsSearch {
    // Albums - Disable Search
    return 1;
}
%end

%hook PUAlbumListViewController
- (void)navigateToCollection:(id)arg1 animated:(bool)arg2 completion:(id)arg3 {
    // Albums - Disable Open Animation: {(Arg#2): YES=F, NO=T}
    arg2 = 0;
    %orig;
}
%end

%hook PXPhotoKitCollectionsDataSourceManager
- (bool)canReorderCollection:(id)arg1 {
    // Albums - Can Reorder Stock Albums
    return 1;
}
%end

%hook PXPhotoKitCollectionsDataSourceManager
- (bool)containsAnyAssets:(id)arg1 {
    // Albums - Hide Thumbnails: {YES=F, NO=T}
    return 1;
}
%end

%hook PUAlbumListViewController
- (bool)showPeople {
    // Hide Albums - "People": {HIDE=F}
    return 0;
}
%end

%hook PHFetchOptions
- (bool)includePlacesSmartAlbum {
    // Hide Albums - "Places": {HIDE=F}
    return 0;
}
%end

%hook PXPhotoKitCollectionsDataSourceManager
- (bool)_containsAnyAssets:(id)arg1 {
    // Hide Albums - Stock Albums (i.e. "Videos", "Selfies", "Screenshots" etc): {SHOW=P, SHOW ALL=T, HIDE=F}
    return 0;
}
%end

%hook PUOneUpSettings
- (bool)allowParallax {
    // Photo Browser - Disable Parallax (Stop Image Edge Cutoff On Zoom): {YES=F, NO=T}
    return 0;
}
%end

%hook PUOneUpSettings
- (void)setInterpageSpacing:(double)arg1 {
    // Photo Browser - Scrolling Interpage Spacing: {NO SPACE=0 etc.}
    arg1 = 5;
    %orig;
}
%end

%hook PUOneUpSettings
- (double)maximumInitialZoomToFillScaleForCompactSizeClass {
    // Photo Browser - Disable Auto Zoom (Full Photos): {YES=0, NO=P}
    return 0;
}
%end

%hook PUOneUpSettings
- (void)setDefaultMaximumZoomFactor:(double)arg1 {
    // Photo Browser - Increase Maximum Zoom: {STOCK=3}
    arg1 = 500;
    %orig;
}
%end

%hook PUPhotoEditViewController
- (bool)_shouldDisplayRedEyeTool {
    // Enable Red Eye Remover Editing
    return 1;
}
%end

%hook PUDeletePhotosActionController
- (bool)shouldSkipDeleteConfirmation {
    // Skip Photo Delete Confirmation
    return 1;
}
%end

%hook PXMemoriesRelatedSettings
- (bool)enableUI {
    // Hide Tab - "Memories": {YES=F, NO=P}
    return 0;
}
%end

%hook PUTabbedLibraryViewControllerPhoneSpec
- (id)createSharedAlbumListViewController {
    // Hide Tab - "Shared" (iPhones): {YES=N, NO=P}
    return NULL;
}
%end

%hook PUTabbedLibraryViewControllerPadSpec
- (id)createSharedAlbumListViewController {
    // Hide Tab - "Shared" (iPads): {YES=N, NO=P}
    return NULL;
}
%end

%hook PUTabbedLibraryViewController
- (void)setSelectedContentMode:(int)arg1 {
    // Tab Bar - Selected Tab On Open: {STOCK=D, "Photos"=0, "Albums"=2 etc}
    arg1 = 2;
    %orig;
}
%end

%hook UITabBarButton
- (void)setEnabled:(bool)arg1 {
    // Tab Bar - Lock Tabs: {YES=F, NO=T}
    arg1 = 1;
    %orig;
}
%end

