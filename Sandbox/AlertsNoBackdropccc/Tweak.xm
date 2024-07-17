#import <UIKit/UIKit.h>

%hook _UIAlertControllerView
- (BOOL)shouldHaveBackdropView {
    // Backdrop
    return 0;
}
%end

