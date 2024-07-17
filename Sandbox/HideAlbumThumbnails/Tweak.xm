#import <UIKit/UIKit.h>

%hook PUAlbumListViewController
- (BOOL)_collectionIsHiddenAlbum:(id)arg1 {
    // Use Crossed Out "/" Image:  Yes=True
    return 1;
}
%end

