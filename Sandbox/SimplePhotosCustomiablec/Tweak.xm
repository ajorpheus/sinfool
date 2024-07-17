#import <UIKit/UIKit.h>

%hook PUPhotosGridViewController
- (bool)allowSelectAllButton {
    // Enable Select All Button (Moments)
    return 1;
}
%end

%hook PUPhotosAlbumViewController
- (bool)allowSelectAllButton {
    // Enable Select All Button (Camera Roll)
    return 1;
}
%end

%hook PUAlbumListViewController
- (bool)disallowsSearch {
    // Disable Search
    return 1;
}
%end

%hook PUAlbumListViewController
- (bool)canReorderCollection:(id)arg1 {
    // Reorder Stock Albums
    return 1;
}
%end

%hook PUAlbumListViewController
- (bool)_containsAnyAssets:(id)arg1 {
    // Hide Stock Albums: {YES=F, NO=P}
    return 0;
}
%end

%hook PUAlbumListViewController
- (void)_getDisplayableAssets:(id*)arg1 indexes:(id*)arg2 forCollection:(id)arg3 maximumCount:(long long)arg4 useCache:(bool)arg5 {
    // Hide Album Thumbnails (with Generic Icon): {(Arg#5): YES=P, NO=T}
    arg5 = 1;
    %orig;
}
%end

%hook PUAlbumListCellContentView
- (id)subtitle {
    // Hide Album Photo Counts: {YES=N, NO=P}
    return NULL;
}
%end

%hook UITableViewCell
- (id)_disclosureChevronImage:(bool)arg1 {
    // Hide Album List ">" Chevron: {YES=N, NO=P}
    return NULL;
}
%end

%hook PUAlbumListViewController
- (void)navigateToCollection:(id)arg1 animated:(bool)arg2 completion:(id)arg3 {
    // Disable Album Open Animation: {(Arg#2): YES=F, NO=P}
    arg2 = 0;
    %orig;
}
%end

%hook PUOneUpSettings
- (bool)allowParallax {
    // Disable Parallax (Stop Image Edge Cutoff On Zoom): {YES=F, NO=T}
    return 0;
}
%end

%hook PUOneUpSettings
- (void)setInterpageSpacing:(double)arg1 {
    // Scrolling Interpage Spacing: {NO SPACE=0, STOCK=P etc.}
    arg1 = 5;
    %orig;
}
%end

%hook PUOneUpTilingLayout
- (float)tileContentMaximumInitialZoomToFillScale {
    // Disable Auto Zoom (Full Photos) [iOS 9.x]: {YES=0, NO=P}
    return 0;
}
%end

%hook PUOneUpSettings
- (double)maximumInitialZoomToFillScaleForCompactSizeClass {
    // Disable Auto Zoom (Full Photos): {YES=0, NO=P}
    return 0;
}
%end

%hook PUOneUpSettings
- (void)setDefaultMaximumZoomFactor:(double)arg1 {
    // Increase Maximum Zoom: {STOCK=3}
    arg1 = 500;
    %orig;
}
%end

%hook PUPhotoBrowserTitleView
- (bool)_isSecondaryLabelVisible {
    // Use Browser Day (Only) Descriptions [#1]: {YES=F, NO=P}
    return 0;
}
%end

%hook PUPhotoBrowserTitleView
- (id)_secondaryLabel {
    // Use Browser Day (Only) Descriptions [#2]: {YES=N, NO=P}
    return NULL;
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

%hook PUPhotosGridViewController
- (bool)alwaysHideTabBar {
    // Hide Photo Grid Tab Bar Area: {DISABLE IF USING MULTIPLE TABS}
    return 1;
}
%end

%hook PUTabbedLibraryViewControllerPhoneSpec
- (id)createSharedAlbumListViewController {
    // Hide "Shared" Tab/Content (iPhone): {YES=N, NO=P}
    return NULL;
}
%end

%hook PUTabbedLibraryViewControllerPadSpec
- (id)createSharedAlbumListViewController {
    // Hide "Shared" Tab/Content (iPads): {YES=N, NO=P}
    return NULL;
}
%end

%hook UITabBarButton
- (id)initWithImage:(id)arg1 selectedImage:(id)arg2 label:(id)arg3 withInsets:(UIEdgeInsets)arg4 {
    // Hide Tab Bar Icons: {(Return Value): YES=N, NO=P}
    return NULL;
}
%end

%hook UITabBar
- (bool)_backgroundNeedsUpdate {
    // Hide Tab Bar Background [#1]: {YES=F, NO=T}
    return 0;
}
%end

%hook UITabBar
- (bool)_wantsAdaptiveBackdrop {
    // Hide Tab Bar Background [#2]: {YES=F, NO=T}
    return 0;
}
%end

%hook PUTabbedLibraryViewController
- (void)setSelectedContentMode:(int)arg1 {
    // Selected Tab: {STOCK=P, "Photos"=1, "Albums"=2 etc}
    arg1 = 2;
    %orig;
}
%end

