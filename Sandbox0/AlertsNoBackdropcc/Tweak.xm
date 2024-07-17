#import <UIKit/UIKit.h>

%hook _UIAlertControllerView
- (BOOL)shouldHaveBackdropView {
    // Backdrop
    return 0;
}
%end

%hook _UIAlertControlleriOSActionSheetCancelBackgroundView
- (id)initWithFrame:(CGRect)arg1 {
    // Cancel Button
    return NULL;
}
%end

