#import <UIKit/UIKit.h>

%hook UIAlertAction
- (long long)style {
    // •
    return 2;
}
%end

