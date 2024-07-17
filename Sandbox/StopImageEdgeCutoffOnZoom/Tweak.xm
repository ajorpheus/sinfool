#import <UIKit/UIKit.h>

%hook PUOneUpSettings
- (void)setAllowParallax:(bool)arg1 {
    arg1 = 0;
    %orig;
}
%end

%hook PUOneUpSettings
- (bool)allowParallax {
    return 0;
}
%end

