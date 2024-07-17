#import <UIKit/UIKit.h>

%hook PUPhotoBrowserController
- (id)_currentFavoriteItemIdentifier {
    // Show "♡" Icon:  Yes=pass-through, No=NULL
    return NULL;
}
%end

