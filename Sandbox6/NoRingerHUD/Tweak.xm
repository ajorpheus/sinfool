#import <UIKit/UIKit.h>

%hook SBRingerHUDView
- (id)init {
    // •
    return NULL;
}
%end

