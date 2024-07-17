#import <UIKit/UIKit.h>

%hook SBControlCenterContentView
- (id)brightnessSection {
    return NULL;
}
%end

%hook SBControlCenterContentView
- (id)airplaySection {
    return NULL;
}
%end

