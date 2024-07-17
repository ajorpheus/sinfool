#import <UIKit/UIKit.h>

%hook PUAlbumListViewController
- (bool)_containsAnyAssets:(id)arg1 {
    return 0;
}
%end

