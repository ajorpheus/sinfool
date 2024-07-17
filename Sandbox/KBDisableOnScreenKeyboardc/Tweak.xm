#import <UIKit/UIKit.h>

%hook UIKeyboard
- (id)initWithFrame:(CGRect)arg1 {
    return NULL;
}
%end

