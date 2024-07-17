#import <UIKit/UIKit.h>

%hook SBUIAnimationDosidoTransitionController
- (long long)orientationAtLaunch {
    // Slide Open from... 1=Right, 2=Left, 3=Bottom, 4=Top
    return 4;
}
%end

