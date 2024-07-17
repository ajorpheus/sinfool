#import <UIKit/UIKit.h>

%hook GPAdvertisementManager
- (id)init {
    return NULL;
}
%end

