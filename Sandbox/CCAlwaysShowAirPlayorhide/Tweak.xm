#import <UIKit/UIKit.h>

%hook SBMediaController
- (bool)routeOtherThanHandsetIsAvailable {
    // Show=True, Hide=False
    return 1;
}
%end

