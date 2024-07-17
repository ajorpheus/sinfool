#import <UIKit/UIKit.h>

%hook OverscrollActionsController
- (bool)isOverscrollActionEnabled {
    // Pull Down Menu:  Disable=FALSE
    return 0;
}
%end

