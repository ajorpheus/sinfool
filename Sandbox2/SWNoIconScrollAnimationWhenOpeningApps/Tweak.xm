#import <UIKit/UIKit.h>

%hook SBAppSwitcherController
- (id)_animationFactoryForIconAlphaTransition {
    // •
    return NULL;
}
%end

