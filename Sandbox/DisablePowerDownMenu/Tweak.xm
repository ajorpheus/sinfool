#import <UIKit/UIKit.h>

%hook SBPowerDownController
- (id)init {
    return NULL;
}
%end

