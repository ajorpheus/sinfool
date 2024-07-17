#import <UIKit/UIKit.h>

%hook SBSlideUpAppGrabberView
- (BOOL)_shouldUseVibrancy {
    return 0;
}
%end

