#import <UIKit/UIKit.h>

%hook BrowserController
- (bool)dynamicBarAnimator:(id)arg1 canHideBarsByDraggingWithOffset:(double)arg2 {
    return 0;
}
%end

