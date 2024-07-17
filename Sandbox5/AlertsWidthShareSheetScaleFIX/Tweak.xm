#import <UIKit/UIKit.h>

%hook _UIAlertControllerView
- (float)_verticalLayoutWidth {
    // Set Width... (iP5=322, etc)
    return 322;
}
%end

