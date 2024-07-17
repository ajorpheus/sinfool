#import <UIKit/UIKit.h>

%hook _UIAlertControllerView
- (void)setCancelActionIsDiscrete:(bool)arg1 {
    // Merge Button:  Yes=FALSE, No=TRUE
    arg1 = 0;
    %orig;
}
%end

