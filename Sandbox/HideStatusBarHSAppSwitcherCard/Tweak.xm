#import <UIKit/UIKit.h>

%hook SBAppSwitcherStatusBarViewCache
- (id)fakeStatusBarForHomePageCell {
    return NULL;
}
%end

