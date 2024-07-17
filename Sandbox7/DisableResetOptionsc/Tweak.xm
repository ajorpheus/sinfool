#import <UIKit/UIKit.h>

%hook PSUIResetPrefController
- (id)init {
    return NULL;
}
%end

