#import <UIKit/UIKit.h>

%hook UIAlertControllerVisualStyleAlert
- (float)backgroundCornerRadius {
    // Notifications
    return 0;
}
%end

%hook UIAlertControllerVisualStyleActionSheet
- (float)backgroundCornerRadius {
    // Action Sheets
    return 0;
}
%end

