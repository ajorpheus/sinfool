#import <UIKit/UIKit.h>

%hook IGViewController
- (bool)prefersStatusBarHidden {
    return 1;
}
%end

%hook IGNavigationBar
- (bool)maintainBarHeightWhenStatusBarHidden {
    return 0;
}
%end

