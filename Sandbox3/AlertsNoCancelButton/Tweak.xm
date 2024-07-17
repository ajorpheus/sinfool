#import <UIKit/UIKit.h>

%hook UIAlertController
- (bool)_canDismissWithGestureRecognizer {
    return 1;
}
%end

%hook _UIAlertControllerView
- (bool)showsCancelAction {
    return 0;
}
%end

