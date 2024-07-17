#import <UIKit/UIKit.h>

%hook UITextInputTraits
- (long long)keyboardType {
    return 0;
}
%end

