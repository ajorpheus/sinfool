#import <UIKit/UIKit.h>

%hook SPTStatusBarManager
- (id)hideStatusBarWithAnimation:(long long)arg1 {
    return NULL;
}
%end

