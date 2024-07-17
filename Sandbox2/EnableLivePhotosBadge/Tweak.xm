#import <UIKit/UIKit.h>

%hook PUAssetViewModel
- (bool)wantsIrisBadgeVisible {
    return 1;
}
%end

