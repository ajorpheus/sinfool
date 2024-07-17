#import <UIKit/UIKit.h>

%hook UIAlertControllerVisualStyleAlert
- (double)backgroundCornerRadius {
    // Notification Popups:  Square=0, Stock=pass-through
    return 0;
}
%end

%hook UIAlertControllerVisualStyleActionSheet
- (double)backgroundCornerRadius {
    // Action Sheets:    Square=0, Stock=pass-through
    return 0;
}
%end

