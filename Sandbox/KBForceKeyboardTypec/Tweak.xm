#import <UIKit/UIKit.h>

%hook UITextInputTraits
- (long long)keyboardType {
    // See suggestions above...
    return 0;
}
%end

