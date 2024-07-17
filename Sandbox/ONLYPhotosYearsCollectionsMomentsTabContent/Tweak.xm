#import <UIKit/UIKit.h>

%hook PUTabbedLibraryViewControllerPhoneSpec
- (id)createSharedAlbumListViewController {
    return NULL;
}
%end

%hook PUTabbedLibraryViewControllerPadSpec
- (id)createSharedAlbumListViewController {
    return NULL;
}
%end

%hook PUTabbedLibraryViewControllerPhoneSpec
- (id)createAlbumListViewController {
    return NULL;
}
%end

%hook PUTabbedLibraryViewControllerPadSpec
- (id)createAlbumListViewController {
    return NULL;
}
%end

%hook PUPhotosGridViewController
- (bool)alwaysHideTabBar {
    return 1;
}
%end

