#import <UIKit/UIKit.h>

%hook UIViewController
- (bool)prefersStatusBarHidden {
    return 1;
}
%end

%hook BrowserController
- (double)_navigationBarDesiredHeight {
    return 0;
}
%end

%hook BrowserController
- (bool)_shouldUseNarrowLayout {
    return 0;
}
%end

