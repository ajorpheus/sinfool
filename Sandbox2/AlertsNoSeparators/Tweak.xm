#import <UIKit/UIKit.h>

%hook _UIAlertControllerCollectionViewFlowLayout
- (bool)hideSeparators {
    // •
    return 1;
}
%end

%hook UIAlertControllerVisualStyle
- (bool)hideActionSeparators {
    // •
    return 1;
}
%end

