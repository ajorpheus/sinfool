#import <UIKit/UIKit.h>

%hook BrowserController
- (bool)shouldShowSidebarInLandscape {
    return 0;
}
%end

