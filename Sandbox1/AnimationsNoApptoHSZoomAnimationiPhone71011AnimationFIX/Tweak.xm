#import <UIKit/UIKit.h>

%hook SBUIAnimationZoomApp
- (unsigned long long)zoomDirection {
    return 0;
}
%end

