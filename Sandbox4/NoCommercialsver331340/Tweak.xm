#import <UIKit/UIKit.h>

%hook AdBreak
- (id)ads {
    return NULL;
}
%end

