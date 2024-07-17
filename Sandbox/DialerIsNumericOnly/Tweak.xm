#import <UIKit/UIKit.h>

%hook MobilePhoneApplication
- (bool)dialerIsNumericOnly {
    // •
    return 1;
}
%end

