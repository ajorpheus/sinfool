#import <UIKit/UIKit.h>

%hook _SFBrowserToolbar
- (bool)isMinibar {
    return 1;
}
%end

