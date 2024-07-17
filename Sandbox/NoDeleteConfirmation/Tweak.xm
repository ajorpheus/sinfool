#import <UIKit/UIKit.h>

%hook PUDeletePhotosActionController
- (bool)shouldSkipDeleteConfirmation {
    return 1;
}
%end

