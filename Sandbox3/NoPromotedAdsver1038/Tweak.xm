#import <UIKit/UIKit.h>

%hook YTPromotedVideoCellController
- (bool)shouldShowPromotedItems {
    return 0;
}
%end

