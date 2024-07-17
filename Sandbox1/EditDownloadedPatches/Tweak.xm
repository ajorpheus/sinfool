#import <UIKit/UIKit.h>

%hook FLPatch
- (BOOL)editable {
    return 1;
}
%end

