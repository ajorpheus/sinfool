#import <UIKit/UIKit.h>

%hook UIViewAnimationState
- (bool)_allowsUserInteraction {
    return 1;
}
%end

%hook SBUIAnimationZoomDownApp
- (id)initWithTransitionContextProvider:(id)arg1 {
    // Disables "App to HS" Zoom Animation
    return NULL;
}
%end

