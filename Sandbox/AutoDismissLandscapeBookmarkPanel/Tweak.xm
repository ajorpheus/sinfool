#import <UIKit/UIKit.h>

%hook BrowserController
- (bool)_usesEmbeddedSidebarAppearance {
    return 0;
}
%end

