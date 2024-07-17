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

%hook _UIAlertControllerView
- (bool)_shouldHaveCancelActionInCollectionView {
    return 0;
}
%end

%hook _UIAlertControllerView
- (void)setCancelActionIsDiscrete:(bool)arg1 {
    arg1 = 0;
    %orig;
}
%end

