#import <UIKit/UIKit.h>

%hook _UIAlertControllerView
- (bool)shouldHaveBackdropView {
    return 0;
}
%end

