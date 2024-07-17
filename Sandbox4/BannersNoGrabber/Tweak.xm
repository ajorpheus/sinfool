#import <UIKit/UIKit.h>

%hook NCNotificationShortLookView
- (bool)_shouldShowGrabber {
    return 0;
}
%end

