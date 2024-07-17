#import <UIKit/UIKit.h>

%hook GKDevice
- (bool)isGameKitAvailable {
    return 0;
}
%end

