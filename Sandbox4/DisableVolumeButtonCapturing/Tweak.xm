#import <UIKit/UIKit.h>

%hook CAMViewfinderViewController
- (bool)_allowsPhysicalCaptureInteraction {
    return 0;
}
%end

