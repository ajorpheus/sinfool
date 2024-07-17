#import <UIKit/UIKit.h>

%hook SBUIDismissSwitcherAnimationController
- (id)initWithTransitionContextProvider:(id)arg1 activatingDisplayItem:(id)arg2 interactive:(bool)arg3 {
    return NULL;
}
%end

