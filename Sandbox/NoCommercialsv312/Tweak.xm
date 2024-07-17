#import <UIKit/UIKit.h>

%hook ANVFreewheelAdConfig
- (bool)isActive {
    return 0;
}
%end

