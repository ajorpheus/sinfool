#import <UIKit/UIKit.h>

%hook ChatViewController
- (id)inviteBanner {
    return NULL;
}
%end

