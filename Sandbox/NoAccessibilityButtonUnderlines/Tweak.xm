#import <UIKit/UIKit.h>

%hook UILabel
- (void)_setWantsUnderlineForAccessibilityButtonShapesEnabled:(bool)arg1 {
    arg1 = 0;
    %orig;
}
%end

