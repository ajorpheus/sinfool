#import <UIKit/UIKit.h>

%hook UIAlertControllerVisualStyle
- (BOOL)hideActionSeparators {
    return 1;
}
%end

