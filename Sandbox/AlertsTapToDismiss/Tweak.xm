#import <UIKit/UIKit.h>

%hook UIAlertController
- (bool)_canDismissWithGestureRecognizer {
    // •
    return 1;
}
%end

