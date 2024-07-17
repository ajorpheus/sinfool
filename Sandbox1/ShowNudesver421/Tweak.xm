#import <UIKit/UIKit.h>

%hook PF500User
- (bool)showNude {
    return 1;
}
%end

