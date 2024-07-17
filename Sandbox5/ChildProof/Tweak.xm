#import <UIKit/UIKit.h>

%hook UIToolbarButton
- (void)setEnabled:(bool)arg1 {
    // Allow Tool Bar Buttons:  >>>DELETE THIS ENTRY<<<
    arg1 = 0;
    %orig;
}
%end

%hook PUAlbumListViewController
- (bool)canDeleteCollection:(id)arg1 {
    return 0;
}
%end

%hook PUCloudSharedAlbumViewController
- (bool)canDeleteContent {
    return 0;
}
%end

%hook PUPhotosGridViewController
- (bool)canDeleteContent {
    return 0;
}
%end

%hook PUDeletePhotosActionController
- (bool)shouldSkipDeleteConfirmation {
    return 1;
}
%end

%hook PUDeletePhotosActionController
- (void)_handleFinalUserDecisionShouldDelete:(bool)arg1 {
    arg1 = 0;
    %orig;
}
%end

