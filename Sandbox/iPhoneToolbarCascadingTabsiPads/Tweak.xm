#import <UIKit/UIKit.h>

%hook BrowserController
- (bool)_shouldUseNarrowLayout {
    return 1;
}
%end

