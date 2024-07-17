#import <UIKit/UIKit.h>

%hook NCMaterialView
- (void)_setContinuousCornerRadius:(double)arg1 {
    // Set Radius...
    arg1 = 0;
    %orig;
}
%end

