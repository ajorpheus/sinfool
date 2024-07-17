#import <UIKit/UIKit.h>

%hook _UIAlertControllerView
- (void)setCancelActionIsDiscrete:(BOOL)arg1 {
    // Merge:  Yes=False, No=True
    arg1 = 0;
    %orig;
}
%end

