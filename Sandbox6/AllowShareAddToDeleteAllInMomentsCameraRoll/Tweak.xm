#import <UIKit/UIKit.h>

%hook PUPhotosGridViewController
- (bool)allowSelectAllButton {
    // Allow In Moments
    return 1;
}
%end

%hook PUPhotosAlbumViewController
- (bool)allowSelectAllButton {
    // Allow In Camera Roll
    return 1;
}
%end

