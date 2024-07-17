#import <UIKit/UIKit.h>

%hook BKImageCache
- (bool)forceGenericCovers {
    return 1;
}
%end

