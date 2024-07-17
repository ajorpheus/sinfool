#import <UIKit/UIKit.h>

%hook SBVolumeHUDView
- (id)init {
    // •
    return NULL;
}
%end

