#import <UIKit/UIKit.h>

%hook SBSlideUpAppGrabberView
- (bool)_shouldUseVibrancy {
    // •
    return 0;
}
%end

