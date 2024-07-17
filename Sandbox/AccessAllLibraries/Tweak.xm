#import <UIKit/UIKit.h>

%hook FYApplication
- (bool)isSystemWide {
    return 1;
}
%end

