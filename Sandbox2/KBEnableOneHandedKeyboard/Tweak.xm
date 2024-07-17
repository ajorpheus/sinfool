#import <UIKit/UIKit.h>

%hook UIKeyboardLayoutStar
- (bool)edgeSwipeGestureEnabled {
    return 1;
}
%end

