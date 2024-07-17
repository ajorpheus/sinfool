#import <UIKit/UIKit.h>

%hook UIViewAnimationState
- (bool)_allowsUserInteraction {
    // In Apps
    return 1;
}
%end

%hook SBUIAnimationZoomDownApp
- (id)initWithTransitionContextProvider:(id)arg1 {
    // Disables "App to HS" Zoom Animation
    return NULL;
}
%end

%hook SBUIDismissSwitcherAnimationController
- (id)initWithTransitionContextProvider:(id)arg1 activatingDisplayItem:(id)arg2 interactive:(bool)arg3 {
    // In Switcher
    return NULL;
}
%end

