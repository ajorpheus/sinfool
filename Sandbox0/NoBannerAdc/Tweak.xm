#import <UIKit/UIKit.h>

%hook FlurryAdFrame
- (id)init {
    return NULL;
}
%end

