#import <UIKit/UIKit.h>

%hook PUAlbumListViewController
- (BOOL)canReorderCollection:(id)arg1 {
    return 1;
}
%end

