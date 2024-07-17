#import <UIKit/UIKit.h>

%hook SBDeckSwitcherIconImageContainerView
- (id)displayName {
    return NULL;
}
%end

