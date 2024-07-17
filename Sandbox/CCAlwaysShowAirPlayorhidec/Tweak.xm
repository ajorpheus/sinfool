#import <UIKit/UIKit.h>

%hook SBMediaController
- (bool)routeOtherThanHandsetIsAvailable {
    // Always=True, Never=False
    return 1;
}
%end

