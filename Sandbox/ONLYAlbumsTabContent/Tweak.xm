#import <UIKit/UIKit.h>

%hook PUTabbedLibraryViewController
- (int)selectedContentMode {
    return 2;
}
%end

%hook PUTabbedLibraryViewController
- (void)setSelectedContentMode:(int)arg1 {
    arg1 = 2;
    %orig;
}
%end

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

%hook UITabBarButton
- (id)initWithImage:(id)arg1 selectedImage:(id)arg2 label:(id)arg3 withInsets:(UIEdgeInsets)arg4 {
    return NULL;
}
%end

%hook UITabBar
- (bool)_backgroundNeedsUpdate {
    return 0;
}
%end

%hook PUPhotosGridViewController
- (bool)alwaysHideTabBar {
    return 1;
}
%end

