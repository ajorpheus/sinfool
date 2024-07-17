#import <UIKit/UIKit.h>

%hook UIViewController
- (bool)prefersStatusBarHidden {
    return 1;
}
%end

