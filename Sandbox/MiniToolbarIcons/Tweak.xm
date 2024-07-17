#import <UIKit/UIKit.h>

%hook BrowserToolbar
- (bool)isMinibar {
    return 1;
}
%end

