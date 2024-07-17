#import <UIKit/UIKit.h>

%hook SBSpotlightSettings
- (BOOL)enableSpotlightOnMinusPage {
    return 0;
}
%end

