#import <UIKit/UIKit.h>

%hook CABackdropLayer
- (bool)isEnabled {
    return 0;
}
%end

