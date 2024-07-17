#import <UIKit/UIKit.h>

%hook SBBrightnessHUDView
- (id)init {
    return NULL;
}
%end

