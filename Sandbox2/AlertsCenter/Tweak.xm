#import <UIKit/UIKit.h>

%hook UIAlertController
- (int)preferredStyle {
    return 1;
}
%end

