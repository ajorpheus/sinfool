#import <UIKit/UIKit.h>

%hook SBUIAnimationDosidoTransitionController
- (id)_animationFactory {
    return NULL;
}
%end

