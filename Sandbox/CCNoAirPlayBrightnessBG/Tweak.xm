#import <UIKit/UIKit.h>

%hook SBCCBrightnessSectionController
- (bool)_shouldDarkenBackground {
    // Brighness BG
    return 0;
}
%end

