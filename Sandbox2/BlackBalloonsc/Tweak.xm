#import <UIKit/UIKit.h>

%hook CKUIBehavior
- (id)blue_balloonColors {
    // Blue Balloons
    return NULL;
}
%end

%hook CKUIBehavior
- (id)green_balloonColors {
    // Green Balloons
    return NULL;
}
%end

