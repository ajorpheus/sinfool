#import <UIKit/UIKit.h>

%hook FLAd
- (id)init {
    // •
    return NULL;
}
%end

