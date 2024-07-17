#import <UIKit/UIKit.h>

%hook BottomMenuBar
- (id)friendButton {
    // Notification Dot
    return NULL;
}
%end

