#import <UIKit/UIKit.h>

%hook UINavigationButton
- (bool)_wantsAccessibilityButtonShapes {
    // Rounded
    return 0;
}
%end

%hook UINavigationItemButtonView
- (bool)_wantsAccessibilityButtonShapes {
    // Arrow Style
    return 0;
}
%end

%hook UILabel
- (void)_setWantsUnderlineForAccessibilityButtonShapesEnabled:(bool)arg1 {
    arg1 = 0;
    %orig;
}
%end

