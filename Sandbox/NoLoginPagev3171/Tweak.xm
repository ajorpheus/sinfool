#import <UIKit/UIKit.h>

%hook AppLaunchPresenter
- (BOOL)shouldShowStartupAuthScreen {
    return 0;
}
%end

