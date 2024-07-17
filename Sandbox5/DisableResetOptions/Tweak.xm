#import <UIKit/UIKit.h>

%hook ResetPrefController
- (id)init {
    // •
    return NULL;
}
%end

