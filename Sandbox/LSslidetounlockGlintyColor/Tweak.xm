#import <UIKit/UIKit.h>

%hook _UIGlintyShapeView
- (void)setStrokeColor:(id)arg1 {
    // Set Color...
    arg1 = [UIColor colorWithRed:35/255.0 green:218/255.0 blue:218/255.0 alpha:255/255.0];
    %orig;
}
%end

