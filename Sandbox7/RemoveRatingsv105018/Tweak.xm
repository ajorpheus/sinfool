#import <UIKit/UIKit.h>

%hook YTVideoDetailsActionsView
- (id)init {
    return NULL;
}
%end

