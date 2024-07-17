#import <UIKit/UIKit.h>

%hook BrowserController
- (bool)_isVerticallyConstrained {
    return 1;
}
%end

