#import <UIKit/UIKit.h>

%hook TopViewVC
- (bool)floating {
    return 1;
}
%end

