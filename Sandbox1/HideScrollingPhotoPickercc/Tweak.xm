#import <UIKit/UIKit.h>

%hook PUOneUpBarsController
- (bool)shouldShowScrubber {
    return 0;
}
%end

