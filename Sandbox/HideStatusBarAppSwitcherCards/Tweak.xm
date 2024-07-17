#import <UIKit/UIKit.h>

%hook SBAppSwitcherStatusBarViewCache
- (id)init {
    return NULL;
}
%end

