#import <UIKit/UIKit.h>

%hook CCUIControlCenterVisualEffect
- (id)contentsMultiplyColor {
    // Set Color...
    return [UIColor colorWithRed:255/255.0 green:127/255.0 blue:0/255.0 alpha:255/255.0];
}
%end

