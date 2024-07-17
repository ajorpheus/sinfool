#import <UIKit/UIKit.h>

%hook _UIAlertControllerInterfaceActionGroupView
- (bool)_shouldShowSeparatorAboveActionsSequenceView {
    // Top Separator
    return 0;
}
%end

