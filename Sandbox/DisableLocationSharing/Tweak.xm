#import <UIKit/UIKit.h>

%hook IMFMFSession
- (bool)disableLocationSharing {
    return 1;
}
%end

