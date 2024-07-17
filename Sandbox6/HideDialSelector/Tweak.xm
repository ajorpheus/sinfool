#import <UIKit/UIKit.h>

%hook CAMModeDial
- (id)initWithFrame:(CGRect)arg1 {
    return NULL;
}
%end

