#import <UIKit/UIKit.h>

%hook _UIGlintyStringView
- (id)chevron {
    return NULL;
}
%end

