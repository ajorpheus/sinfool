#import <UIKit/UIKit.h>

%hook UITextInputTraits
- (bool)suppressReturnKeyStyling {
    return 1;
}
%end

