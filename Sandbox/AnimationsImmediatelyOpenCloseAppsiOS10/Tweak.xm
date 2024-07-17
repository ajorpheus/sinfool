#import <UIKit/UIKit.h>

%hook SBUIAnimationZoomUpApp
- (id)initWithTransitionContextProvider:(id)arg1 {
    return NULL;
}
%end

%hook SBFolderIconZoomAnimator
- (unsigned long long)_numberOfSignificantAnimations {
    return 0;
}
%end

%hook SBUIAnimationZoomDownApp
- (id)initWithTransitionContextProvider:(id)arg1 {
    return NULL;
}
%end

%hook SpringBoard
- (bool)isMenuDoubleTapAllowed {
    return 0;
}
%end

