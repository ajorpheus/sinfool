#import <UIKit/UIKit.h>

%hook TUCall
- (id)desktopImage {
    return NULL;
}
%end

