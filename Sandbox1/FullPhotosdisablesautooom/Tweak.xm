#import <UIKit/UIKit.h>

%hook PLPhotoTileViewController
- (void)setZoomScale:(float)arg1 {
    // •
    arg1 = 0;
    %orig;
}
%end

