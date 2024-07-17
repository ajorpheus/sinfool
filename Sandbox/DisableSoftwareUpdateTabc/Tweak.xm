#import <UIKit/UIKit.h>

%hook SoftwareUpdatePrefController
- (id)init {
    // •
    return NULL;
}
%end

