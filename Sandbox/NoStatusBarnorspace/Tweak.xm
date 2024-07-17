#import <UIKit/UIKit.h>

%hook UIViewController
- (bool)prefersStatusBarHidden {
    return 1;
}
%end

%hook UIApplication
- (bool)_isStatusBarHiddenForOrientation:(long long)arg1 {
    return 1;
}
%end

