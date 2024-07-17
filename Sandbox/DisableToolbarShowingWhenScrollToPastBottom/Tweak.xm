#import <UIKit/UIKit.h>

%hook BrowserController
- (bool)_isScrolledToOrPastBottom {
    return 0;
}
%end

