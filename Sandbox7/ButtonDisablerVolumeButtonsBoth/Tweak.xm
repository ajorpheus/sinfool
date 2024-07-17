#import <UIKit/UIKit.h>

%hook SpringBoard
- (bool)_volumeChanged:(__IOHIDEvent*)arg1 {
    return 0;
}
%end

