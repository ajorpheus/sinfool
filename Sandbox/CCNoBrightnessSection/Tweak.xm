#import <UIKit/UIKit.h>

%hook SBControlCenterContentView
- (id)brightnessSection {
    return NULL;
}
%end

