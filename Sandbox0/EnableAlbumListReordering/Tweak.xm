#import <UIKit/UIKit.h>

%hook PUAlbumListViewController
- (bool)canReorderCollection:(id)arg1 {
    return 1;
}
%end

