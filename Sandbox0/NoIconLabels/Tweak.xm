#import <UIKit/UIKit.h>

%hook SBIconLabelImageParameters
- (id)text {
    return NULL;
}
%end

